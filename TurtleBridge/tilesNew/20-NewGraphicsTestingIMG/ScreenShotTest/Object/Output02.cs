using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output02 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.font_tiles_yellow);
			assets.Add(AssetType.section03_norm_64x32);
			assets.Add(AssetType.section04_norm_64x80);
			assets.Add(AssetType.section03_norm_64x32_tree);

			Wide = 128;
			High = 32 + 112 + 80 + 112;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			Texture2D image;
			Vector2 pos;
			int y = 0;
			foreach (AssetType asset in assets)
			{
				image = assetManager.Images[(int)asset];

				pos = new Vector2(0, y);
				spriteBatch.Draw(image, pos, Color.White);
				y += image.Height;
			}
			
		}

	}
}
