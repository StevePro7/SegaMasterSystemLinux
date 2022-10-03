using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;

namespace _02_Test
{
	public class Game1 : Game
	{
		const int image = 5;

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		Texture2D[] images;
		int index = 0;

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
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
			string dirX = "0" + image.ToString();
			string pref = "skate0";
			if (4 == image)
			{
				pref += "1";
			}
			else if (5 == image)
			{
				pref += "2";
			}
			else
			{
				pref += image.ToString();
			}

			images = new Texture2D[4];
			images[0] = Content.Load<Texture2D>($"{dirX}/{pref}_01");
			images[1] = Content.Load<Texture2D>($"{dirX}/{pref}_02");
			images[2] = Content.Load<Texture2D>($"{dirX}/{pref}_03");
			images[3] = Content.Load<Texture2D>($"{dirX}/{pref}_04");
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

			if (Keyboard.GetState().IsKeyDown(Keys.D1))
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

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.Black);

			spriteBatch.Begin();
			spriteBatch.Draw(images[index], new Vector2(200, 200), null, Color.White, 0.0f, Vector2.Zero, 8.0f, SpriteEffects.None, 1.0f);
			spriteBatch.End();

			base.Draw(gameTime);
		}
	}
}
