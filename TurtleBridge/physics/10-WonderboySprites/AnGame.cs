using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.IO;

namespace Test
{
	public class AnGame : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		Texture2D[] sprites;
		RenderTarget2D renderTarget;

		const int MAX_SPRITES = 10;
		int wide= 32;
		int high = 32;
		string[] names = new string[MAX_SPRITES] { "skate01", "skate02", "skateR1", "skateR2", "skateR3", "skateR4", "skateL1", "skateL2", "skateL3", "skateL4" };
		private bool save;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = wide;
			graphics.PreferredBackBufferHeight = high * MAX_SPRITES;
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			save = false;
			//save = true;
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			sprites = new Texture2D[MAX_SPRITES];
			for (int idx = 0; idx < MAX_SPRITES; idx++)
			{
				sprites[idx] = Content.Load<Texture2D>(names[idx]);
			}
			renderTarget = new RenderTarget2D(GraphicsDevice, wide, high, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}

		protected override void UnloadContent()
		{
			Content.Unload();
		}

		protected override void Update(GameTime gameTime)
		{
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
			{
				Exit();
			}

			if (save || Keyboard.GetState().IsKeyDown(Keys.Space))
			{
				GraphicsDevice.SetRenderTarget(renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw(gameTime);
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				var name = "sprites.png";
				Stream stream2 = File.Create(name);
				resolvedTexture.SaveAsPng(stream2, wide, high);

				Exit();
			}

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.Black);

			spriteBatch.Begin();
			for (int idx = 0; idx < MAX_SPRITES; idx++)
			{
				spriteBatch.Draw(sprites[idx], new Vector2(0, idx * high), Color.White);
			}
			spriteBatch.End();
			base.Draw(gameTime);
		}

	}
}
