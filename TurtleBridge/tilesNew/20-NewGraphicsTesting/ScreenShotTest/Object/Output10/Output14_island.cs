using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output14 : Output, IOutput
	{
		const int high = 112;

		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.waves_block_112);
			assets.Add(AssetType.section03_norm_64x32_02);
			assets.Add(AssetType.section03_norm_64x32_03);
			assets.Add(AssetType.section03_norm_64x32_04);
			assets.Add(AssetType.section03_norm_64x32_05);
			assets.Add(AssetType.section03_norm_64x32_06);
			assets.Add(AssetType.section03_norm_64x32_07);

			Wide = 64;
			High = high;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset;
			Texture2D image;

			int y = 0;
			asset = assets[0];
			image = assetManager.Images[(int)asset];

			spriteBatch.Draw(image, new Vector2(0, 0), Color.White);
			spriteBatch.Draw(image, new Vector2(32, 0), Color.White);

			y = High - 32;
			//Draw(spriteBatch, 1, 0 * 8, y);
			//Draw(spriteBatch, 2, 1 * 8, y);
			//Draw(spriteBatch, 3, 2 * 8, y);
			//Draw(spriteBatch, 4, 3 * 8, y);
			//Draw(spriteBatch, 1, 4 * 8, y);
			//Draw(spriteBatch, 2, 5 * 8, y);
			//Draw(spriteBatch, 3, 6 * 8, y);
			//Draw(spriteBatch, 4, 7 * 8, y);

			Draw(spriteBatch, 2, 0 * 8, y);
			Draw(spriteBatch, 3, 1 * 8, y);
			Draw(spriteBatch, 4, 2 * 8, y);
			Draw(spriteBatch, 5, 3 * 8, y);
			Draw(spriteBatch, 2, 4 * 8, y);
			Draw(spriteBatch, 3, 5 * 8, y);
			Draw(spriteBatch, 4, 6 * 8, y);
			Draw(spriteBatch, 5, 7 * 8, y);

			//Draw(spriteBatch, 3, 0 * 8, y);
			//Draw(spriteBatch, 4, 1 * 8, y);
			//Draw(spriteBatch, 5, 2 * 8, y);
			//Draw(spriteBatch, 6, 3 * 8, y);
			//Draw(spriteBatch, 3, 4 * 8, y);
			//Draw(spriteBatch, 4, 5 * 8, y);
			//Draw(spriteBatch, 5, 6 * 8, y);
			//Draw(spriteBatch, 6, 7 * 8, y);

			//asset = assets[1];
			//image = assetManager.Images[(int)asset];
			//y = High - image.Height;
			//pos = new Vector2(0, y);
			//spriteBatch.Draw(image, pos, Color.White);
		}

		private void Draw(SpriteBatch spriteBatch, int idx, int x, int y)
		{
			var asset = assets[idx];
			var image = assetManager.Images[(int)asset];
			var pos = new Vector2(x, y);
			spriteBatch.Draw(image, pos, Color.White);
		}


	}
}