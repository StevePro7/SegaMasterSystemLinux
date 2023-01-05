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
			assets.Add(AssetType.bridge_mid01l);
			assets.Add(AssetType.bridge_mid01r);
			assets.Add(AssetType.bridge_mid02l);
			assets.Add(AssetType.bridge_mid02r);
			assets.Add(AssetType.bridge);

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

			asset = assets[4];
			image = assetManager.Images[(int)asset];
			int y = High - image.Height;
			pos = new Vector2(0, y);
			spriteBatch.Draw(image, pos, Color.White);
		}

		public void DrawHybrid(SpriteBatch spriteBatch)
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
					spriteBatch.Draw(image, pos,  Color.White);
				}
			}

			asset = assets[1];
			image = assetManager.Images[(int)asset];
			int y = High - image.Height;
			pos = new Vector2(32, y);
			spriteBatch.Draw(image, pos, Color.White);

			asset = assets[4];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(0, y);
			spriteBatch.Draw(image, pos, Color.White);
		}

		// Right not great
		public void DrawY(SpriteBatch spriteBatch)
		{
			AssetType asset;
			Texture2D image;
			Vector2 pos;

			asset = assets[4];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(0, 0);
			spriteBatch.Draw(image, pos, Color.White);

			asset = assets[1];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(32, 0);
			spriteBatch.Draw(image, pos, Color.White);
		}

		// LEFT not great
		public void DrawX(SpriteBatch spriteBatch)
		{
			AssetType asset;
			Texture2D image;
			Vector2 pos;

			asset = assets[3];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(0, 0);
			spriteBatch.Draw(image, pos, Color.White);

			asset = assets[2];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(32, 0);
			spriteBatch.Draw(image, pos, Color.White);
		}
	}
}
