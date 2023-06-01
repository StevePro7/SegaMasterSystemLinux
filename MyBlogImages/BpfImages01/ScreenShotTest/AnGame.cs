using System;
using System.Configuration;
using System.IO;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

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
		private Texture2D[] images;
		private const int offset = 0;
		private const int max = 3;
		private const int val = 0;
		private string[] names = new string[max] { "cursor01", "cursor02", "cursor03" };

		private bool save;

		private int width;
		private int height;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 48;
			graphics.PreferredBackBufferHeight = 24;
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
			images = new Texture2D[max];
			for (int idx = 0; idx < max; idx++)
			{
				images[idx] = Content.Load<Texture2D>(names[idx]);
			}

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
				//GraphicsDevice.SetRenderTarget(0, renderTarget);
				GraphicsDevice.SetRenderTarget(renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw();
				base.Draw(gameTime);

				//GraphicsDevice.SetRenderTarget(0, null);
				GraphicsDevice.SetRenderTarget(null);
				//Texture2D resolvedTexture = renderTarget.GetTexture();
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				//resolvedTexture.Save("00.jpg", ImageFileFormat.Jpg);
				//Stream stream = File.Create(names[val] + ".png");
				Stream stream = File.Create("stevepro.png");
				//resolvedTexture.SaveAsJpeg(stream, width, height);
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
			graphics.GraphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();
			spriteBatch.Draw(images[2], new Vector2(0, 0), Color.OrangeRed);
			//spriteBatch.Draw(images[4], new Vector2(8, 0), Color.White);
			//spriteBatch.Draw(images[4], new Vector2(16, 0), Color.White);
			//spriteBatch.Draw(images[4], new Vector2(24, 0), Color.White);
			//spriteBatch.Draw(images[4], new Vector2(32, 0), Color.White);
			//spriteBatch.Draw(images[1], new Vector2(40, 0), Color.White);

			//spriteBatch.Draw(images[5], new Vector2(0, 8), Color.White);
			//spriteBatch.Draw(images[5], new Vector2(40, 8), Color.White);

			//spriteBatch.Draw(images[2], new Vector2(0, 16), Color.White);
			//spriteBatch.Draw(images[4], new Vector2(8, 16), Color.White);
			//spriteBatch.Draw(images[4], new Vector2(16, 16), Color.White);
			//spriteBatch.Draw(images[4], new Vector2(24, 16), Color.White);
			//spriteBatch.Draw(images[4], new Vector2(32, 16), Color.White);
			//spriteBatch.Draw(images[3], new Vector2(40, 16), Color.White);

			spriteBatch.End();
		}

	}

}