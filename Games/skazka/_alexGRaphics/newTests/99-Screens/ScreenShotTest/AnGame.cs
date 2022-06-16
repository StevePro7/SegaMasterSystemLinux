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
		private int index = 13;
		private string[] files = { "screen_01_title", "screen_02_difficulty", "screen_03_intro", "screen_04_stats", "screen_05_forest", "screen_5a_victory", "screen_06_shop", "screen_07_villager_talk", "screen_08a_boss_prep", "screen_08b_boss_query", "screen_08c_boss_fight", "screen_09_game_over", "screen_10_beat_game", "screen_11_menu" };

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;

		private bool save;
		private int width;
		private int height;

		private IDictionary<int, Texture2D> dict = new Dictionary<int, Texture2D>();
		private Texture2D[] images = new Texture2D[2];

		public AnGame()
		{
			width = 256;
			height = 192;
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
			for (int i = 0; i < 14; i++)
			{
				dict[i] = Content.Load<Texture2D>(files[i]);
			}
			

			images[0] = Content.Load<Texture2D>("Horizontal");
			images[1] = Content.Load<Texture2D>("Vertical");

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
				var file = files[index];
				Stream stream = File.Create("output/" + file + ".png");
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
			int x, y;
			graphics.GraphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();
			spriteBatch.Draw(dict[index], Vector2.Zero, Color.White);

			for (y = 0; y <= 192; y += 8)
			{
				var pos = new Vector2(0, y);
				spriteBatch.Draw(images[0], pos, Color.White);
			}
			for (x = 0; x <= 256; x += 8)
			{
				var pos = new Vector2(x, 0);
				spriteBatch.Draw(images[1], pos, Color.White);
			}
			spriteBatch.End();
		}


	}

}