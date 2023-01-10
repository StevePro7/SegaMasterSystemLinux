using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output08 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			//assets.Add(AssetType.splashSmall);
			assets.Add(AssetType.titlescreen);
			assets.Add(AssetType.font_tiles_yellow_192x24_01);
			assets.Add(AssetType.font_tiles_yellow_192x24_02);

			Wide = 192;
			High = 128 + 24;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset = assets[2];
			Texture2D image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(0, 0), Color.White);

			asset = assets[0];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(0, 24), Color.White);
		}

	}
}
