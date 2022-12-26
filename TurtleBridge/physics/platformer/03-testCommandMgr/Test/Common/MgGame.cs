using System;
using Microsoft.Xna.Framework;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public static class MyGame
	{
		public static void Construct(IGameManager manager)
		{
			Manager = manager;
		}

		public static void Initialize()
		{
			Manager.Logger.Initialize();

			Manager.ContentManager.Initialize();
			Manager.ResolutionManager.Initialize();
			Manager.ScreenManager.Initialize();
		}

		public static void LoadContent()
		{
			Engine.Game.IsFixedTimeStep = Constants.IsFixedTimeStep;
			Engine.Game.TargetElapsedTime = TimeSpan.FromSeconds(1.0f / Constants.FramesPerSecond);
			Engine.Game.IsMouseVisible = Constants.IsMouseVisible;
			Manager.ResolutionManager.LoadContent();
		}

		public static void UnloadContent()
		{
			Engine.Game.Content.Unload();
		}

		public static void Update(GameTime gameTime)
		{
			// 50fps = 20ms = 20 / 1000 = 0.02
			// Single delta = (Single) gameTime.ElapsedGameTime.TotalSeconds;

			Manager.InputManager.Update(gameTime);

#if WINDOWS && DEBUG
			Boolean escape = Manager.InputManager.KeyMove(Microsoft.Xna.Framework.Input.Keys.Escape);
			if (escape)
			{
				//if (Manager.ConfigManager.GlobalConfigData.QuitsToExit)
				//{
					Engine.Game.Exit();
					return;
				//}
			}
#endif

			Manager.ScreenManager.Update(gameTime);
		}

		public static void Draw()
		{
			Manager.ScreenManager.Draw();
		}

		public static IGameManager Manager { get; private set; }
	}

}