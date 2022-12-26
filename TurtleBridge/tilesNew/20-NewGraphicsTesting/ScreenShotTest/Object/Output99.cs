using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output99 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			Wide = 80;
			High = 8;

			assets.Add(AssetType.wave01);
			assets.Add(AssetType.wave02);
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			int x = 0;
			int y = 0;
			var color = Color.White;
			var image = assetManager.Images[(int)AssetType.wave01];
			var pos = new Vector2(x, y);
			spriteBatch.Draw(image, pos, color);

			image = assetManager.Images[(int)AssetType.wave02];
			pos = new Vector2(16, y);
			spriteBatch.Draw(image, pos, color);
		}
	}
}
