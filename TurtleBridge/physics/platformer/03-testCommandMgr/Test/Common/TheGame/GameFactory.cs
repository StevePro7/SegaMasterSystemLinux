using WindowsGame.Master;

namespace WindowsGame.Common
{
	public static class GameFactory
	{
		public static IGameManager Resolve()
		{
			return IoCContainer.Resolve<IGameManager>();
		}

		public static void Release()
		{
			IoCContainer.Release();
		}
	}
}