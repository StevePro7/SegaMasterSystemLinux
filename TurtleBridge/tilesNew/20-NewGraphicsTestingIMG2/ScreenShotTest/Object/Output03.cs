using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output03 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			//assets.Add(AssetType.font_tiles_yellow);
			assets.Add(AssetType.section03_open_64x32_01);
			assets.Add(AssetType.section03_open_64x32_02);
			assets.Add(AssetType.section03_open_64x32_03);
			assets.Add(AssetType.section04_norm_64x80);

			Wide = 64;
			High = 112;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset;
			Texture2D image;
			Vector2 pos;
			int y = 0;

			asset = assets[2];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(0, y);
			spriteBatch.Draw(image, pos, Color.White);

			asset = assets[3];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(0, y);
			spriteBatch.Draw(image, pos, Color.White);
		}

	}
}
