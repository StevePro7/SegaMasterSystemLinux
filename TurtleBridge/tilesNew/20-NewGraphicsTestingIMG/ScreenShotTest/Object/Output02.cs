using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output02 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.font_tiles_yellow);
			assets.Add(AssetType.flying_turtle01_32x24_00);
			assets.Add(AssetType.flying_turtle01_32x24_01);
			assets.Add(AssetType.flying_turtle01_32x24_02);
			assets.Add(AssetType.flying_turtle01_32x24_03);

			Wide = 128;
			High = 32 + 112;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset;
			Texture2D image;
			Vector2 pos;
			int i, y = 0;

			asset = assets[0];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(0, y);
			spriteBatch.Draw(image, pos, Color.White);
			y += image.Height;

			for (i = 0; i < 1; i++)
			{
				asset = assets[i + 1];
				image = assetManager.Images[(int)asset];
				pos = new Vector2(i * 32, y);
				spriteBatch.Draw(image, pos, Color.White);
			}
			
		}

	}
}
