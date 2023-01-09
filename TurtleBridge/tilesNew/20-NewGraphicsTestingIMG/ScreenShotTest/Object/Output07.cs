using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output07 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.waves_block_32x112);
			assets.Add(AssetType.cloud01_32x24);
			assets.Add(AssetType.cloud02_48x24);
			
			Wide = 128;
			High = 24;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset = assets[0];
			Texture2D image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(0, 0), Color.White);
			spriteBatch.Draw(image, new Vector2(32, 0), Color.White);
			spriteBatch.Draw(image, new Vector2(64, 0), Color.White);
			spriteBatch.Draw(image, new Vector2(96, 0), Color.White);

			asset = assets[2];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(0 + (64 - image.Width) / 2, 0), Color.White);

			asset = assets[1];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(64 + (64 - image.Width) / 2, 0), Color.White);
		}

	}
}
