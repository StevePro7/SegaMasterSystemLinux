using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output01 : IOutput
	{

		public void Ctor(GraphicsDeviceManager graphics)
		{
			Wide = 128;
			High = 40;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
		}

		public int High { get; private set; }
		public int Wide { get; private set; }
	}
}
