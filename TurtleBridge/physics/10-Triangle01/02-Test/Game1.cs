using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;

namespace _02_Test
{
	public class Game1 : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		Texture2D triangle;
		Texture2D block;

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 600;
			graphics.PreferredBackBufferHeight = 500;
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			Logger.Initialize();
			IsFixedTimeStep = true;
			var fps = 50;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / fps);
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);

			triangle = Content.Load<Texture2D>("triangle345");
			block = Content.Load<Texture2D>("block");
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

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			int x, y;
			GraphicsDevice.Clear(Color.CornflowerBlue);

			spriteBatch.Begin();
			spriteBatch.Draw(triangle, new Vector2(100, 100), Color.White);
			DrawBlock(100, 400);
			DrawBlock(500, 100);

			x = 100; y = GetY(x);
			DrawBlock(100 + x, 400 - y);

			//x = 200; y = 150;
			x = 200; y = GetY(x);
			DrawBlock(100 + x, 400 - y);

			x = 300; y = GetY(x);
			DrawBlock(100 + x, 400 - y);

			spriteBatch.End();

			base.Draw(gameTime);
		}

		private void DrawBlock(int x, int y)
		{
			var pos = new Vector2(x - 20, y - 20);
			spriteBatch.Draw(block, pos, Color.White);
		}

		private int GetY(int x)
		{
			var rads = MathHelper.ToRadians(37);
			var angl = Math.Tan(rads);
			var high = x * angl;
			return (int)(high);
		}
	}
}
