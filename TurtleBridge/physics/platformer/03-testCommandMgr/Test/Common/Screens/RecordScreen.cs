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
		}

		public int Update(GameTime gameTime)
		{
			return (int)ScreenType.Record;
		}

		public void Draw()
		{
		}
	}
}
