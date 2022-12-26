using Microsoft.Xna.Framework;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public class RecordScreen : IScreen
	{
		public void Initialize()
		{
		}

		public void LoadContent()
		{
			Engine.Game.Window.Title = GetType().Name;
		}

		public int Update(GameTime gameTime)
		{
			return (int)ScreenType.Record;
		}

		public void Draw()
		{
			Engine.SpriteBatch.DrawString(Assets.EmulogicFont, "RECORD SCREEN", new Vector2(10, 10), Color.Yellow);
		}
	}
}
