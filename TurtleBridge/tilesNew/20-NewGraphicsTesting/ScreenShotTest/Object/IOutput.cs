using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public interface IOutput
	{
		void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager);
		void Draw(SpriteBatch spriteBatch);
		void Save(string name);

		int Wide { get; }
		int High { get; }
	}
}
