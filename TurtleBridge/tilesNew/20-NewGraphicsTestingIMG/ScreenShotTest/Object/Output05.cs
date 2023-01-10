using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output05 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.font_tiles_yellow);
			assets.Add(AssetType.wave_strip);

			Wide = 192;
			High = 24;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset = assets[0];
			Texture2D image = assetManager.Images[(int)asset];

			int y = 0;
			spriteBatch.Draw(image, new Vector2(0, y), new Rectangle(0, 0, 128, 8), Color.White);
			spriteBatch.Draw(image, new Vector2(128, y), new Rectangle(0, 8, 128, 8), Color.White);

			y = 8;
			spriteBatch.Draw(image, new Vector2(0, y), new Rectangle(64, 8, 64, 8), Color.White);
			spriteBatch.Draw(image, new Vector2(64, y), new Rectangle(0, 16, 128, 8), Color.White);

			y = 16;
			//spriteBatch.Draw(image, new Vector2(0, y), new Rectangle(0, 24, 128, 8), Color.White);
			spriteBatch.Draw(image, new Vector2(0, y), new Rectangle(0, 24, 128 - 40, 8), Color.White);

			// waves strip
			asset = assets[1];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(128 - 16, y), Color.White);
		}

	}
}
