using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.IO;

namespace ScreenShotTest
{
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		string[] files = { "skate01", "skate02", "skate03" };
		Texture2D[] images;

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;

		private bool save;
		private int width;
		private int height;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 24;
			graphics.PreferredBackBufferHeight = 32 * 3;
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			save = false;
			save = true;
			IsMouseVisible = true;
			base.Initialize();
		}

		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			int idx = 0;
			images = new Texture2D[files.Length];
			foreach (var file in files)
			{
				images[idx] = Content.Load<Texture2D>(files[idx]);
				idx++;
			}

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			width = pp.BackBufferWidth;
			height = pp.BackBufferHeight;
			//renderTarget = new RenderTarget2D(GraphicsDevice, width, height, 1, GraphicsDevice.DisplayMode.Format);
			renderTarget = new RenderTarget2D(GraphicsDevice, width, height, false, SurfaceFormat.Color, DepthFormat.Depth24);
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
				Stream stream = File.Create("sprites.png");
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
			int y = 0;
			graphics.GraphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();

			spriteBatch.Draw(images[0], new Vector2(0, 0), Color.White);
			spriteBatch.Draw(images[1], new Vector2(0, 32), Color.White);
			spriteBatch.Draw(images[2], new Vector2(0, 64), Color.White);

			spriteBatch.End();
		}

	}

}