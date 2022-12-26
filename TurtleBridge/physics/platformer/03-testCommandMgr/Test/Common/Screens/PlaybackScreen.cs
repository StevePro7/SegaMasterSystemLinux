using Microsoft.Xna.Framework;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public class PlaybackScreen : IScreen
	{
		public void Initialize()
		{
		}

		public void LoadContent()
		{
		}

		public int Update(GameTime gameTime)
		{
			return (int)ScreenType.Playback;
		}

		public void Draw()
		{
		}
	}
}
