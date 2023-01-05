using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output04 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			Wide = 128;
			High = 32 + 8+ 80;

			assets.Add(AssetType.font);
			assets.Add(AssetType.wave);
			assets.Add(AssetType.bridge);
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
				y += image.Height;
				idx++;
			}
		}
	}
}
