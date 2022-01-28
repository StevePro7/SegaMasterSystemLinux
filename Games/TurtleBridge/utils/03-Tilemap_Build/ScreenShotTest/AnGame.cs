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
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;

		Dictionary<string, Texture2D> images = new Dictionary<string, Texture2D>();
		string[] lines;

		private int size = 43;
		private bool save;

		private int width = 128;
		private int height = 96;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = width;
			graphics.PreferredBackBufferHeight = height;
			graphics.ApplyChanges();
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
			//if (null != ConfigurationManager.AppSettings["save"])
			//{
			//	save = Convert.ToBoolean(ConfigurationManager.AppSettings["save"]);
			//}
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

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			pp.BackBufferWidth = width;
			pp.BackBufferHeight = height;
			renderTarget = new RenderTarget2D(GraphicsDevice, width, height, false, SurfaceFormat.Color, DepthFormat.Depth24);

			lines = File.ReadAllLines("tileMap.txt");
			for (int loop = 0; loop < size; loop++)
			{
				var key = loop.ToString().PadLeft(2, '0');
				images[key] = Content.Load<Texture2D>("output/" + key);
			}
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
				//GraphicsDevice.SetRenderTarget(0, renderTarget);
				GraphicsDevice.SetRenderTarget(renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw();
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				Stream stream = File.Create("large" + ".png");
				resolvedTexture.SaveAsPng(stream, width, height);

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
			Draw_Tiles();
		}

		private void Draw_Tiles()
		{
			int tx, ty;
			int high = lines.Length;

			spriteBatch.Begin();
			for (ty = 0; ty < high; ty++)
			{
				var line = lines[ty];
				var texts = line.Split(new char[] { ',' });
				int wide = texts.Length;

				for (tx = 0; tx < wide; tx++)
				{
					var key = texts[tx];
					Vector2 pos = new Vector2(tx * 8, ty * 8);
					spriteBatch.Draw(images[key], pos, Color.White);
				}
			}
			spriteBatch.End();
		}

		private void Draw_Tilemap()
		{
			int tx, ty;
			int wide = 16;
			int high = size / wide + 1;
			int loop = 0;

			spriteBatch.Begin();
			for (ty = 0; ty < high; ty++)
			{
				for (tx = 0; tx < wide; tx++)
				{
					if (loop >= size)
					{
						break;
					}
					Vector2 pos = new Vector2(tx * 8, ty * 8);
					var key = loop.ToString().PadLeft(2, '0');
					spriteBatch.Draw(images[key], pos, Color.White);
					loop++;
				}
			}
			spriteBatch.End();
		}

	}

}