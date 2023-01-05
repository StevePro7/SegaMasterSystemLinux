using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output03 : Output, IOutput
	{
		//private AssetType[] assets = { AssetType.font, AssetType.bridge };

		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			Wide = 128;
			High = 32 + 80;

			assets.Add(AssetType.font);
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
				if (idx > 0)
				{
					//x = 8;
				}

				var pos = new Vector2(x, y);
				spriteBatch.Draw(image, pos, color);
				y += image.Height;
				idx++;
			}
		}
	}
}
