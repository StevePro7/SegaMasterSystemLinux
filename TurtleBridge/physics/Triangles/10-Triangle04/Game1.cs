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
		Texture2D[] triangle;
		private const int High = 256-80;
		private readonly MyRocketManager myRocketManager;
		private readonly MyConfigManger myConfigManger;

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 256;
			graphics.PreferredBackBufferHeight = 256;
			Content.RootDirectory = "Content";
			myConfigManger = new MyConfigManger();
			myRocketManager = new MyRocketManager(myConfigManger);
			myRocketManager.Initialize();
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

			triangle = new Texture2D[2];
			triangle[0] = Content.Load<Texture2D>("triangle45_01");
			triangle[1] = Content.Load<Texture2D>("triangle45_02");
			myRocketManager.LoadContent(Content);
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

			//if (!myRocketManager.IsRocketFlying)
			//{
			//	if (Keyboard.GetState().IsKeyDown(Keys.D1))
			//	{
			//		myRocketManager.Launch(1);
			//	}
			//	if (Keyboard.GetState().IsKeyDown(Keys.D2))
			//	{
			//		myRocketManager.Launch(2);
			//	}
			//	if (Keyboard.GetState().IsKeyDown(Keys.D3))
			//	{
			//		myConfigManger.Initialize();
			//		myRocketManager.Launch(3);
			//	}
			//	if (Keyboard.GetState().IsKeyDown(Keys.D4))
			//	{
			//		myRocketManager.Launch(4);
			//	}
			//	if (Keyboard.GetState().IsKeyDown(Keys.D5))
			//	{
			//		myRocketManager.Launch(5);
			//	}
			//}

			//myRocketManager.Update(gameTime);
			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.CornflowerBlue);
			//GraphicsDevice.Clear(Color.White);

			spriteBatch.Begin();
			spriteBatch.Draw(triangle[0], new Vector2(32, High), Color.White);
			spriteBatch.Draw(triangle[1], new Vector2(256-80-32, High), Color.White);
			myRocketManager.Draw(spriteBatch);

			spriteBatch.End();

			base.Draw(gameTime);
		}

	}
}
