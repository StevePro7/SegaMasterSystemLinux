using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output11b : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.skys_64);
			assets.Add(AssetType.bridge_mid01l);
			assets.Add(AssetType.bridge_mid01r);
			assets.Add(AssetType.bridge_mid02l);
			assets.Add(AssetType.bridge_mid02r);

			Wide = 64;
			High = 112;
		}

		public void Draw(SpriteBatch spriteBatch)
		{

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
