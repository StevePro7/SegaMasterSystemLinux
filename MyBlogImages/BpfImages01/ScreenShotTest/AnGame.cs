using System.IO;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;

		private ConfigManager configManager;
		private ImageManager ImageManager;
		private string name;
		private int wide;
		private int high;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			Content.RootDirectory = "Content";

			configManager = new ConfigManager();
			ImageManager = new ImageManager();
		}

		protected override void Initialize()
		{
			configManager.Init();
			name = configManager.Name;
			IsMouseVisible = true;
			base.Initialize();
		}

		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);
			ImageManager.Load(Content);

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			wide = pp.BackBufferWidth;
			high = pp.BackBufferHeight;
			//renderTarget = new RenderTarget2D(GraphicsDevice, width, height, 1, GraphicsDevice.DisplayMode.Format);
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
				this.Exit();

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			if (configManager.Save)
			{
				//GraphicsDevice.SetRenderTarget(0, renderTarget);
				GraphicsDevice.SetRenderTarget(renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw();
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = renderTarget;

				Stream stream = File.Create(name + ".png");
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
			graphics.GraphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();
			ImageManager.Draw(name);
			//spriteBatch.Draw(images[2], new Vector2(0, 0), Color.OrangeRed);
			spriteBatch.End();
		}

	}

}