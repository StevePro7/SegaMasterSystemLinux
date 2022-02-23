using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;
using System.IO;

namespace ScreenShotTest
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		const string file = "04-sea";

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;

		private IDictionary<string, Texture2D> dictionary;
		private string[] lines;
		private int width;
		private int height;
		private int length;
		private bool save;

		public AnGame()
		{
			var files = System.IO.Directory.GetFiles("Content/tiles", "*", System.IO.SearchOption.TopDirectoryOnly);
			length = files.Length;

			width = 32;
			height = 40;

			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = width;
			graphics.PreferredBackBufferHeight = height;
			Content.RootDirectory = "Content";
		}

		/// <summary>
		/// Allows the game to perform any initialization it needs to before starting to run.
		/// This is where it can query for any required services and load any non-graphic
		/// related content.  Calling base.Initialize will enumerate through any components
		/// and initialize them as well.
		/// </summary>
		protected override void Initialize()
		{
			save = false;
			save = true;
			IsMouseVisible = true;
			base.Initialize();
		}

		/// <summary>
		/// LoadContent will be called once per game and is the place to load
		/// all of your content.
		/// </summary>
		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			dictionary = new Dictionary<string, Texture2D>();
			for (int i = 0; i < length; i++)
			{
				var file = i.ToString().PadLeft(3, '0');
				dictionary[file] = Content.Load<Texture2D>("tiles/" + file);
			}

			lines = File.ReadAllLines(file + ".csv");

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			width = pp.BackBufferWidth;
			height = pp.BackBufferHeight;
			//renderTarget = new RenderTarget2D(GraphicsDevice, width, height, 1, GraphicsDevice.DisplayMode.Format);
			renderTarget = new RenderTarget2D(GraphicsDevice, width, height, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}

		/// <summary>
		/// UnloadContent will be called once per game and is the place to unload
		/// all content.
		/// </summary>
		protected override void UnloadContent()
		{
			Content.Unload();
		}

		/// <summary>
		/// Allows the game to run logic such as updating the world,
		/// checking for collisions, gathering input, and playing audio.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Update(GameTime gameTime)
		{
			// Allows the game to exit
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
				this.Exit();

			base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
			if (save)
			{
				GraphicsDevice.SetRenderTarget(renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw();
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				//Stream stream = File.Create(file + "_org.png");
				//resolvedTexture.SaveAsPng(stream, width, height);
				Stream stream2 = File.Create(file + ".png");
				resolvedTexture.SaveAsPng(stream2, width, height);

				Exit();
			}
			else
			{
				Draw();
				base.Draw(gameTime);
			}
		}

		private void Draw()
		{
			graphics.GraphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();

			int rows = height / 8;
			int cols = width / 8;
			for (int row = 0; row < rows; row++)
			{
				var line = lines[row];
				var texts = line.Split(new char[] { ',' });
				for (int col = 0; col < cols; col++)
				{
					var text = texts[col];
					var file = text.PadLeft(3, '0');

					Vector2 pos = new Vector2(col * 8, row * 8);
					Texture2D image = dictionary[file];

					spriteBatch.Draw(image, pos, Color.White);
				}
			}

			spriteBatch.End();
		}

	}
}
