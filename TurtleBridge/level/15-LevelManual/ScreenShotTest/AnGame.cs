using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.IO;

namespace ScreenShotTest
{
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		const string file = "output";

		private AssetManager assetManager;
		private FileManager fileManager;
		

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;
		private int wide, high;
		private bool save;

		public AnGame()
		{
			assetManager = new AssetManager();
			fileManager = new FileManager();
			fileManager.Initialize();

			wide = fileManager.Objects.Count * 32;
			high = 112;
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = wide;
			graphics.PreferredBackBufferHeight = high;
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			base.Initialize();
			fileManager.Initialize();
			save = false;
			//save = true;
		}

		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			
			assetManager.LoadContent(Content);

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			wide = pp.BackBufferWidth;
			high= pp.BackBufferHeight;
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
			if (save)
			{
				GraphicsDevice.SetRenderTarget(renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw();
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				Stream stream = File.Create(file + ".png");
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
			Texture2D image;
			Vector2 pos;
			graphics.GraphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();

			pos = new Vector2(0, 0);
			foreach(var obj in fileManager.Objects)
			{
				image = assetManager.Images[obj];
				spriteBatch.Draw(image, pos, Color.White);
				pos.X += image.Width;
			}

			spriteBatch.End();
		}

	}

}