using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output04 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.waves_block_32x112);
			assets.Add(AssetType.section02_left_64x48);

			Wide = 64;
			High = 112;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset;
			Texture2D image;
			Vector2 pos;
			int i, y = 0;

			asset = assets[0];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(32 * 0, y), Color.White);
			spriteBatch.Draw(image, new Vector2(32 * 1, y), Color.White);

			asset = assets[1];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(0, High-image.Height);
			spriteBatch.Draw(image, pos, Color.White);
		}

	}
}
