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
		Texture2D image;
		RenderTarget2D renderTarget;

		float rotate;
		int angle;
		const int size = 32;
		private bool save;

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
			Logger.Initialize();
			IsFixedTimeStep = true;
			var fps = 50;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / fps);
			save = false;
			save = true;
			rotate = 0.0f;
			angle = 8 * 45;
			rotate = MathHelper.ToRadians(angle);
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			//image = Content.Load<Texture2D>("steve");
			image = Content.Load<Texture2D>("skate03");
			renderTarget = new RenderTarget2D(GraphicsDevice, size, size, false, SurfaceFormat.Color, DepthFormat.Depth24);
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

				Draw();
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				var name = $"{angle}.png";
				Stream stream2 = File.Create(name);
				resolvedTexture.SaveAsPng(stream2, size, size);

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
			Draw();
			base.Draw(gameTime);
		}

		private void Draw()
		{
			int spot = size / 2;
			GraphicsDevice.Clear(Color.Black);
			//GraphicsDevice.Clear(Color.CornflowerBlue);

			spriteBatch.Begin();

			//ublic void Draw(Texture2D texture, Vector2 position, Rectangle? sourceRectangle, Color color, float rotation, Vector2 origin, float scale, SpriteEffects effects, float layerDepth);
			//priteBatch.Draw(image, new Vector2(64, 64), null, Color.White, rotate, new Vector2(16, 16), SpriteEffects.None, 1.0f);
			spriteBatch.Draw(image, new Vector2(spot, spot), null, null, new Vector2(16, 16), rotate, null, null, SpriteEffects.None, 0.0f);
			spriteBatch.End();
		}
	}
}
