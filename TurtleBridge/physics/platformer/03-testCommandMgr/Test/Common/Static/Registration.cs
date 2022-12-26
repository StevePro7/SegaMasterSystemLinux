using WindowsGame.Master;

namespace WindowsGame.Common
{
	public static class Registration
	{
		public static void Initialize()
		{
			IoCContainer.Initialize<IGameManager, GameManager>();

			IoCContainer.Initialize<ICommandManager, CommandManager>();
			IoCContainer.Initialize<IContentManager, ContentManager>();
			IoCContainer.Initialize<IFrameManager, FrameManager>();
			IoCContainer.Initialize<IInputManager, InputManager>();
			IoCContainer.Initialize<ILevelManager, LevelManager>();
			IoCContainer.Initialize<IPlayerManager, PlayerManager>();
			IoCContainer.Initialize<IScreenManager, ScreenManager>();
			IoCContainer.Initialize<IFileProxy, RealFileProxy>();
			IoCContainer.Initialize<IFileManager, FileManager>();
			IoCContainer.Initialize<ILogger, RealLogger>();
		}

	}
}
