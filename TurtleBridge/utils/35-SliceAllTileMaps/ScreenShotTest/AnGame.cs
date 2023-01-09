using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.IO;

namespace ScreenShotTest
{
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		string file = "section03_norm_64x32";

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;
		Texture2D image;
		int wide, high;
		bool save;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			Content.RootDirectory = "Content";
			save = false;
			save = true;
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			base.Initialize();
		}

		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			image = Content.Load<Texture2D>(file);
			wide = 8;
			high = image.Height;

			graphics.PreferredBackBufferWidth = wide;
			graphics.PreferredBackBufferHeight = high;
			graphics.ApplyChanges();

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			wide = pp.BackBufferWidth;
			high = pp.BackBufferHeight;
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
				int col, val;
				string name;
				Stream stream;
				Texture2D resolvedTexture;

				int loop = image.Width / 8;
				for (col = 0; col < loop; col++)
				{
					GraphicsDevice.SetRenderTarget(renderTarget);
					GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);
					Draw(col);
					base.Draw(gameTime);
					GraphicsDevice.SetRenderTarget(null);
					resolvedTexture = (Texture2D)renderTarget;
					val = col + 01;
					name = file + "_" + val.ToString().PadLeft(2, '0') + ".png";
					stream = File.Create(name);
					resolvedTexture.SaveAsPng(stream, wide, high);
				}

				Exit();
			}
			else
			{
				Draw(0);
				base.Draw(gameTime);
			}
		}

		private void Draw(int col)
		{
			graphics.GraphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();
			spriteBatch.Draw(image, Vector2.Zero, new Rectangle(col * 8, 0,  8, image.Height), Color.White);
			spriteBatch.End();
		}
	}
}
