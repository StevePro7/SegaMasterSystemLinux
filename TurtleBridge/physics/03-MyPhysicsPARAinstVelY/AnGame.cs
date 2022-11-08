using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;

namespace Test
{
	public class AnGame : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		private readonly MyRocketManager myRocketManager;
		private readonly MyConfigManger myConfigManger;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 1280;
			graphics.PreferredBackBufferHeight = 512;
			Content.RootDirectory = "Content";
			myConfigManger = new MyConfigManger();
			myRocketManager = new MyRocketManager(myConfigManger);
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			Logger.Initialize();
			IsFixedTimeStep = true;
			var fps = 50;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / fps);
			myConfigManger.Initialize();
			myRocketManager.Initialize();
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			myRocketManager.LoadContent(Content);

			if (!myRocketManager.IsRocketFlying)
			{
				myRocketManager.Launch();
			}
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

			//if (Keyboard.GetState().IsKeyDown(Keys.Space))
			//{
			//}

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.CornflowerBlue);

			spriteBatch.Begin();
			myRocketManager.Draw(spriteBatch);
			spriteBatch.End();

			base.Draw(gameTime);
		}
	}
}
