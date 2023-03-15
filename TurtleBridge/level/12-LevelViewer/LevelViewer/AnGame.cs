using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace LevelScreen
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		private int[] values = { 1, 3 };

		private const int size = 2;             // Half
		//private const int size = 4;             // Quarter

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;

		AssetManager assetManager;
		ConfigManager configManager;

		RenderTarget2D renderTarget;
		int wide, high;
		bool save;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			
			Content.RootDirectory = "Content";
			Logger.Initialize();

			assetManager = new AssetManager();
			configManager = new ConfigManager();
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
			//save = true;
			IsMouseVisible = true;

			configManager.Initialize();
//			graphics.PreferredBackBufferWidth = configManager.ScreenWide;
			//graphics.PreferredBackBufferHeight = configManager.ScreenHigh;
			//graphics.ApplyChanges();

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

			assetManager.LoadContent(Content, configManager.Level, values);

			wide = 0;
			high = assetManager.Assets[0].Height / size;
			foreach (var asset in assetManager.Assets)
			{
				wide += asset.Width;
			}

			wide /= size;

			graphics.PreferredBackBufferWidth = wide;
			graphics.PreferredBackBufferHeight = high;
			graphics.ApplyChanges();

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			renderTarget = new RenderTarget2D(GraphicsDevice, wide, high, false, SurfaceFormat.Color, DepthFormat.Depth24);
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
			{
				Exit();
			}

			//screenManager.Update(gameTime);
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
			//	//GraphicsDevice.SetRenderTarget(0, renderTarget);
			//	GraphicsDevice.SetRenderTarget(renderTarget);
			//	GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw();
				base.Draw(gameTime);

			//	//GraphicsDevice.SetRenderTarget(0, null);
			//	GraphicsDevice.SetRenderTarget(null);
			//	//Texture2D resolvedTexture = renderTarget.GetTexture();
			//	Texture2D resolvedTexture = (Texture2D)renderTarget;
			//	//resolvedTexture.Save("00.jpg", ImageFileFormat.Jpg);
			//	Stream stream = File.Create("test" + ".png");
			//	//resolvedTexture.SaveAsJpeg(stream, width, height);
			//	resolvedTexture.SaveAsPng(stream, width, height);
		
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
			Texture2D asset = null;
			int strt = 0;
			
			graphics.GraphicsDevice.Clear(Color.CornflowerBlue);
			spriteBatch.Begin();

			for (int idx = 0; idx < assetManager.Assets.Length; idx++)
			{
				asset = assetManager.Assets[idx];
				int leng = asset.Width / size;
				Vector2 pos = new Vector2(strt, 0);

				if (0 == idx)
				{
					spriteBatch.Draw(asset, pos, null, Color.White, 0.0f, Vector2.Zero, 1 / size, SpriteEffects.None, 1.0f);
				}
				
				strt += leng;
			}
			
			spriteBatch.End();
		}

	}

}