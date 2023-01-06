using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output01 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			Wide = 8;
			High = 16 * 8;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
		}

	}
}
