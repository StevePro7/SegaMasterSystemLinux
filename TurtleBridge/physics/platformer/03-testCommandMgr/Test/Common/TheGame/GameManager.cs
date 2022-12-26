using System;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public interface IGameManager
	{
		ICommandManager CommandManager { get; }
		IContentManager ContentManager { get; }
		//IEnumManager EnumManager { get; }
		IFrameManager FrameManager { get; }
		IInputManager InputManager { get; }
		ILevelManager LevelManager { get; }
		IPlayerManager PlayerManager { get; }
		IScreenManager ScreenManager { get; }
	}

	public class GameManager : IGameManager
	{
		public GameManager
		(
			ICommandManager commandManager,
			IContentManager contentManager,
			//IEnumManager enumManager,
			IFrameManager frameManager,
			IInputManager inputManager,
			ILevelManager levelManager,
			IPlayerManager playerManager,
			IScreenManager screenManager
		)
		{
			CommandManager = commandManager;
			ContentManager = contentManager;
			//EnumManager = enumManager,
			FrameManager = frameManager;
			InputManager = inputManager;
			LevelManager = levelManager;
			PlayerManager = playerManager;
			ScreenManager = screenManager;
		}

		public ICommandManager CommandManager { get; private set; }
		public IContentManager ContentManager { get; private set; }
		//public IEnumManager EnumManager { get; private set; }
		public IFrameManager FrameManager { get; private set; }
		public IInputManager InputManager { get; private set; }
		public ILevelManager LevelManager { get; private set; }
		public IPlayerManager PlayerManager { get; private set; }
		public IScreenManager ScreenManager { get; private set; }
	}
}