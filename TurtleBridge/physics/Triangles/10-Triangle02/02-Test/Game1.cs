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
		Texture2D steve;

		float x, y;

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 600;
			graphics.PreferredBackBufferHeight = 500;
			Content.RootDirectory = "Content";
			x = 0.0f;
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

			triangle = Content.Load<Texture2D>("triangle789");
			block = Content.Load<Texture2D>("block");
			steve = Content.Load<Texture2D>("steve");
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

			if (Keyboard.GetState().IsKeyDown(Keys.Left))
			{
				if (x > 0)
				{
					x -= 5; ;
				}
			}
			if (Keyboard.GetState().IsKeyDown(Keys.Right))
			{
				if (x < 400)
				{
					x+=5;
				}
			}
			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.CornflowerBlue);

			spriteBatch.Begin();
			spriteBatch.Draw(triangle, new Vector2(100, 100), Color.White);

			y = GetY(x);
			DrawBlock(100 + x, 100 + y);
			
			spriteBatch.End();

			base.Draw(gameTime);
		}

		private void DrawBlock(float x, float y)
		{
			var pos = new Vector2(x - 15, y - 30);
			spriteBatch.Draw(steve, pos, Color.White);
		}

		private float GetY(float x)
		{
			var rads = MathHelper.ToRadians(37);
			var angl = Math.Tan(rads);
			var high = x * angl;
			return (float)high;
		}
	}
}
