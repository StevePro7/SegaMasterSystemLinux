using System;
using System.Collections.Generic;
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
		string file = "output";

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;
		Texture2D[] images;
		private bool save;

		private int width;
		private int height;

		//private int size = 1;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 128;
			graphics.PreferredBackBufferHeight = 128;
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
			//save = true;
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

			images = new Texture2D[15];
			images[0] = Content.Load<Texture2D>("cloud01_32x48");
			images[1] = Content.Load<Texture2D>("cloud02_96x48");
			images[2] = Content.Load<Texture2D>("flying_turtle01_32x24");
			images[3] = Content.Load<Texture2D>("flying_turtle02_32x24");
			images[4] = Content.Load<Texture2D>("font_tiles");
			images[5] = Content.Load<Texture2D>("sea_turtleAA01_32x24");
			images[6] = Content.Load<Texture2D>("sea_turtleAA02_32x24");
			images[7] = Content.Load<Texture2D>("sea_turtleAA03_32x24");
			images[8] = Content.Load<Texture2D>("sea_turtleBB01_32x24");
			images[9] = Content.Load<Texture2D>("sea_turtleBB02_32x24");
			images[10] = Content.Load<Texture2D>("sea_turtleBB03_32x24");
			images[11] = Content.Load<Texture2D>("wave_strip");
			images[12] = Content.Load<Texture2D>("wonderboy32_01");
			images[13] = Content.Load<Texture2D>("wonderboy32_02");
			images[14] = Content.Load<Texture2D>("wonderboy32_03");

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

				GraphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				Stream stream = File.Create(file + ".png");
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
			graphics.GraphicsDevice.Clear(Color.White);

			spriteBatch.Begin();

			spriteBatch.Draw(images[7], new Vector2(0, 0), Color.White);
			spriteBatch.Draw(images[1], new Vector2(48, 0), Color.White);
			spriteBatch.Draw(images[2], new Vector2(64, 0), Color.White);
			spriteBatch.Draw(images[3], new Vector2(80, 0), Color.White);
			spriteBatch.Draw(images[4], new Vector2(96, 0), Color.White);
			spriteBatch.Draw(images[5], new Vector2(112, 0), Color.White);

			spriteBatch.Draw(images[7], new Vector2(0, 16), Color.White);
			spriteBatch.Draw(images[6], new Vector2(48, 16), Color.White);
			spriteBatch.Draw(images[5], new Vector2(64, 16), Color.White);
			spriteBatch.Draw(images[4], new Vector2(80, 16), Color.White);
			spriteBatch.Draw(images[3], new Vector2(96, 16), Color.White);
			spriteBatch.Draw(images[8], new Vector2(112, 16), Color.White);

			spriteBatch.End();
		}

	}
}
