using WindowsGame.Master;

namespace WindowsGame.Common
{
	public interface IGameManager
	{
		ICommandManager CommandManager { get; }
		IContentManager ContentManager { get; }
		IFrameManager FrameManager { get; }
		IInputManager InputManager { get; }
		ILevelManager LevelManager { get; }
		IPlayerManager PlayerManager { get; }
		IScreenManager ScreenManager { get; }
		IFileManager FileManager { get; }
		ILogger Logger { get; }
	}

	public class GameManager : IGameManager
	{
		public GameManager
		(
			ICommandManager commandManager,
			IContentManager contentManager,
			IFrameManager frameManager,
			IInputManager inputManager,
			ILevelManager levelManager,
			IPlayerManager playerManager,
			IScreenManager screenManager,
			IFileManager fileManager,
			ILogger logger
		)
		{
			CommandManager = commandManager;
			ContentManager = contentManager;
			FrameManager = frameManager;
			InputManager = inputManager;
			LevelManager = levelManager;
			PlayerManager = playerManager;
			ScreenManager = screenManager;
			FileManager = fileManager;
			Logger = logger;
		}

		public ICommandManager CommandManager { get; private set; }
		public IContentManager ContentManager { get; private set; }
		public IFrameManager FrameManager { get; private set; }
		public IInputManager InputManager { get; private set; }
		public ILevelManager LevelManager { get; private set; }
		public IPlayerManager PlayerManager { get; private set; }
		public IScreenManager ScreenManager { get; private set; }
		public IFileManager FileManager { get; private set; }
		public ILogger Logger { get; private set; }
	}

}
