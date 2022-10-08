using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.IO;

namespace _02_Test
{
	public class Game1 : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		Texture2D[] image;
		int index = 0;
		int size = 256;

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = size;
			graphics.PreferredBackBufferHeight = size;
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			IsFixedTimeStep = true;
			var fps = 50;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / fps);
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			//var dirX = "128x128/";
			var dirX = "32x32/";
			image = new Texture2D[8];
			image[0] = Content.Load<Texture2D>(dirX + "000");
			image[1] = Content.Load<Texture2D>(dirX + "045");
			image[2] = Content.Load<Texture2D>(dirX + "090");
			image[3] = Content.Load<Texture2D>(dirX + "135");
			image[4] = Content.Load<Texture2D>(dirX + "180");
			image[5] = Content.Load<Texture2D>(dirX + "225");
			image[6] = Content.Load<Texture2D>(dirX + "270");
			image[7] = Content.Load<Texture2D>(dirX + "315");
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

			if (Keyboard.GetState().IsKeyDown(Keys.D1) || Keyboard.GetState().IsKeyDown(Keys.D9) || Keyboard.GetState().IsKeyDown(Keys.Space))
			{
				index = 0;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D2))
			{
				index = 1;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D3))
			{
				index = 2;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D4))
			{
				index = 3;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D5))
			{
				index = 4;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D6))
			{
				index = 5;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D7))
			{
				index = 6;
			}
			if (Keyboard.GetState().IsKeyDown(Keys.D8))
			{
				index = 7;
			}
			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			int spot = size / 4;
			GraphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();
			spriteBatch.Draw(image[index], new Vector2(spot, spot), Color.White);
			spriteBatch.End();
			base.Draw(gameTime);
		}

		private void Draw()
		{
			
		}
	}
}
