using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public interface IOutput
	{
		void Ctor(GraphicsDeviceManager graphics);
		//void Initialize();
		void Draw(SpriteBatch spriteBatch);

		int Wide { get; }
		int High { get; }
	}
}
