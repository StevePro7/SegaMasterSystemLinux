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
		Texture2D image;
		float rotate;

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 128;
			graphics.PreferredBackBufferHeight = 128;
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
			rotate = 0.0f;
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			//image = Content.Load<Texture2D>("steve");
			image = Content.Load<Texture2D>("skate03");
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
				if (rotate > 0)
				{
					rotate -= 0.1f;
				}
			}
			if (Keyboard.GetState().IsKeyDown(Keys.Right))
			{
				if (rotate < 360)
				{
					rotate += 0.1f;
				}
			}

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.CornflowerBlue);

			spriteBatch.Begin();

			//ublic void Draw(Texture2D texture, Vector2 position, Rectangle? sourceRectangle, Color color, float rotation, Vector2 origin, float scale, SpriteEffects effects, float layerDepth);
			//priteBatch.Draw(image, new Vector2(64, 64), null, Color.White, rotate, new Vector2(16, 16), SpriteEffects.None, 1.0f);
			spriteBatch.Draw(image, new Vector2(64, 64), null, null, new Vector2(16, 16), rotate, null, null, SpriteEffects.None, 0.0f);
			spriteBatch.End();

			base.Draw(gameTime);
		}
	}
}
