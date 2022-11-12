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

		const int MAX_SPRITES = 4;
		int wide= 0;
		int high = 0;
		string[] names = new string[MAX_SPRITES] { "skater01", "skater02", "skater03", "skater04" };
		private bool save;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			//graphics.PreferredBackBufferWidth = wide;
			//graphics.PreferredBackBufferHeight = high;
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			save = false;
			save = true;
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
			wide = 64;
			high = 64 * MAX_SPRITES;

			graphics.PreferredBackBufferWidth = wide;
			graphics.PreferredBackBufferHeight = high;
			graphics.ApplyChanges();
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
			spriteBatch.Draw(sprites[0], new Vector2(0, 0), Color.White);
			spriteBatch.Draw(sprites[1], new Vector2(0, 64), Color.White);
			spriteBatch.Draw(sprites[2], new Vector2(0, 128), Color.White);
			spriteBatch.Draw(sprites[3], new Vector2(0, 192), Color.White);
			//spriteBatch.Draw(sprites[0], new Vector2(74, 0), Color.White);
			spriteBatch.End();
			base.Draw(gameTime);
		}

	}
}
