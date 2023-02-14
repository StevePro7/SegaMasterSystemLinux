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
		private readonly MyContentManager myContentManager;
		private readonly IOutput output;

		public AnGame()
		{
			output = new Output03();

			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 1280;
			graphics.PreferredBackBufferHeight = 512;
			Content.RootDirectory = "Content";
			myConfigManger = new MyConfigManger();
			myContentManager = new MyContentManager();
			myRocketManager = new MyRocketManager(myConfigManger);
		}

		protected override void Initialize()
		{
			Logger.Initialize();
			IsMouseVisible = true;
			IsFixedTimeStep = true;
			var fps = 10;
			TargetElapsedTime = TimeSpan.FromSeconds(1.0f / fps);
			myConfigManger.Initialize();
			myRocketManager.Initialize();
			output.Initialize();
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			myContentManager.LoadContent(Content);
			output.Process();
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
			GraphicsDevice.Clear(Color.CornflowerBlue);

			spriteBatch.Begin();
		//	myRocketManager.Draw(spriteBatch);
			spriteBatch.End();

			base.Draw(gameTime);
		}
	}
}
