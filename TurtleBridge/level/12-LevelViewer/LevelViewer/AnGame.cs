using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.IO;

namespace LevelScreen
{
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

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			
			Content.RootDirectory = "Content";
			Logger.Initialize();

			assetManager = new AssetManager();
			configManager = new ConfigManager();
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			configManager.Initialize();
			base.Initialize();
		}

		protected override void LoadContent()
		{
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

		protected override void UnloadContent()
		{
			Content.Unload();
		}

		protected override void Update(GameTime gameTime)
		{
			// Allows the game to exit
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
			{
				Exit();
			}

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			if (configManager.Saves)
			{
				//GraphicsDevice.SetRenderTarget(0, renderTarget);
				GraphicsDevice.SetRenderTarget(renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw();
				base.Draw(gameTime);

				//GraphicsDevice.SetRenderTarget(0, null);
				GraphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				Stream stream = File.Create(configManager.Level + "_output.png");
				resolvedTexture.SaveAsPng(stream, wide, high);
		
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

				spriteBatch.Draw(asset, pos, null, Color.White, 0.0f, Vector2.Zero, (float)1 / size, SpriteEffects.None, 1.0f);
				strt += leng;
			}

			//spriteBatch.Draw(assetManager.Assets[0], Vector2.Zero, null, Color.White, 0.0f, Vector2.Zero, (float)1 / size, SpriteEffects.None, 1.0f);

			spriteBatch.End();
		}

	}

}