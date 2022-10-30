using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace Test
{
	public class AnGame : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		MyContentManager myContentManager;
		MyInputManager myInputManager;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			myContentManager = new MyContentManager();
			myInputManager = new MyInputManager();
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			IsFixedTimeStep = true;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / 50);
			Logger.Initialize();
			myContentManager.Initialize(Content);
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			myContentManager.LoadContent(Content);
		}

		protected override void UnloadContent()
		{
			myContentManager.UnLoadContent(Content);
		}

		protected override void Update(GameTime gameTime)
		{
			myInputManager.Update(gameTime);
			if (myInputManager.KeyPress(Keys.Escape))
			{
				Exit();
			}

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.CornflowerBlue);

			
			base.Draw(gameTime);
		}

	}
}
