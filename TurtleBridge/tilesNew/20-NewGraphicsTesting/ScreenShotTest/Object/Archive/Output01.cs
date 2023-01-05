using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output01 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			Wide = 128;
			High = 40;

			assets.Add(AssetType.font_old);
			assets.Add(AssetType.block);
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
				if (idx > 0)
				{
					color = Color.Yellow;
				}

				var pos = new Vector2(x, y);
				spriteBatch.Draw(image, pos, color);
				y += image.Height;
				idx++;
			}
		}
	}
}
