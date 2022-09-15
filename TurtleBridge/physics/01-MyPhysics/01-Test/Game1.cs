using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace _01_Test
{
	public class Game1 : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		private readonly MyRocketManager myRocketManager;
		private readonly MyConfigManger myConfigManger;

		public Game1()
		{
			graphics = new GraphicsDeviceManager(this);
			Content.RootDirectory = "Content";
			myConfigManger = new MyConfigManger();
			myRocketManager = new MyRocketManager(myConfigManger);
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			Logger.Initialize();
			myConfigManger.Initialize();
			myRocketManager.Initialize();
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
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

			if (Keyboard.GetState().IsKeyDown(Keys.Space))
			{
				if (!myRocketManager.IsRocketFlying)
				{
					myConfigManger.Initialize();
					myRocketManager.Launch();
				}
			}

			myRocketManager.Update();
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
