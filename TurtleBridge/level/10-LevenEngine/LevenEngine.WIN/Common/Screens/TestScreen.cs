using Microsoft.Xna.Framework;
using WindowsGame.Common.Interfaces;
using WindowsGame.Common.Static;
using WindowsGame.Master;

namespace WindowsGame.Common.Screens
{
	public class TestScreen : BaseScreen, IScreen
	{
		public override void Initialize()
		{
			base.Initialize();
		}

		public override void LoadContent()
		{
			Engine.Game.Window.Title = "TestScreen";
		}

		public ScreenType Update(GameTime gameTime)
		{
			MyGame.Manager.Logger.Info("testing");
			return ScreenType.Test;
		}

		public override void Draw()
		{
		}

	}
}