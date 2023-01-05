using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output11b : Output, IOutput
	{
		const int high = 112;

		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.skys_64);
			assets.Add(AssetType.bridge);
			assets.Add(AssetType.sign);
			assets.Add(AssetType.goal);

			Wide = 32;
			High = high;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset;
			Texture2D image;
			Vector2 pos;

			asset = assets[0];
			image = assetManager.Images[(int)asset];

			int col, row;
			for (row = 0; row < High / 8; row++)
			{
				for (col = 0; col < Wide / 8; col++)
				{
					pos = new Vector2(col * 8, row * 8);
					spriteBatch.Draw(image, pos, Color.White);
				}
			}

			int y = 0;
			asset = assets[1];
			image = assetManager.Images[(int)asset];
			y = High - image.Height;
			pos = new Vector2(0, y);
			spriteBatch.Draw(image, pos, Color.White);

			asset = assets[3];
			image = assetManager.Images[(int)asset];
			y -= image.Height;
			pos = new Vector2(0, y);
			spriteBatch.Draw(image, pos, Color.White);
		}

	}
}
