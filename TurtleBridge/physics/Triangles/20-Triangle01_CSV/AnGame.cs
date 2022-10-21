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
		//Texture2D[] triangle;
		private const int High = 400;

		private readonly MyContentManager myContentManager;
		private readonly MyConfigManger myConfigManger;
		private readonly MyCsvManager myCsvManger;
		private readonly MyRocketManager myRocketManager;

		public AnGame()
		{
			Logger.Initialize();
			myConfigManger = new MyConfigManger();
			myConfigManger.Initialize();

			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = myConfigManger.Wide;
			graphics.PreferredBackBufferHeight = myConfigManger.High;

			myContentManager = new MyContentManager();
			myContentManager.Initialize(Content);

			myCsvManger = new MyCsvManager();
			myCsvManger.Initialize();

			myRocketManager = new MyRocketManager(myConfigManger);
			myRocketManager.Initialize();
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
			myContentManager.LoadContent(Content);
			myCsvManger.Process();
		}

		protected override void UnloadContent()
		{
			myContentManager.UnLoadContent(Content);
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
			//GraphicsDevice.Clear(Color.White);

			spriteBatch.Begin();
			//spriteBatch.Draw(triangle[0], new Vector2(200-triangle[0].Width, High), Color.White);
			//spriteBatch.Draw(triangle[1], new Vector2(600, High), Color.White);
			//myRocketManager.Draw(spriteBatch);

			//y = GetY(x);
			//DrawBlock(100 + x, 100 + y);
			
			spriteBatch.End();

			base.Draw(gameTime);
		}
	}
}
