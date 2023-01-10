using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output08 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.splashSmall);
			assets.Add(AssetType.font_tiles_yellow_192x24_01);
			assets.Add(AssetType.font_tiles_yellow_192x24_02);

			Wide = 192;
			High = 128 + 24;
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
