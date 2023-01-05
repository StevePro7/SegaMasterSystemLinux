using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output10b : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.DrawCol00_16);
			assets.Add(AssetType.DrawCol01_16);
			assets.Add(AssetType.DrawCol02_16);
			assets.Add(AssetType.DrawCol03_16);

			Wide = 32;
			High = 16 * 8;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			int x = 0;
			int y = 0;
			int idx = 0;
			Color color;
			foreach (var asset in assets)
			{
				color = Color.White;
				var image = assetManager.Images[(int)asset];
				var pos = new Vector2(x, y);
				spriteBatch.Draw(image, pos, color);
				x += image.Width;
				idx++;
			}
		}

	}
}
