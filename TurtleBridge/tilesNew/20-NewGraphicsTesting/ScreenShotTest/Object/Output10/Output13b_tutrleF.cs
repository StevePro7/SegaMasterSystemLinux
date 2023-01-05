using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output13b : Output, IOutput
	{
		const int high = 112;

		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.waves_block_112);
			assets.Add(AssetType.turtleF);

			Wide = 32;
			High = high;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset;
			Texture2D image;
			Vector2 pos;

			int y = 0;
			asset = assets[0];
			image = assetManager.Images[(int)asset];
			
			pos = new Vector2(0, 0);
			spriteBatch.Draw(image, pos, Color.White);

			asset = assets[1];
			image = assetManager.Images[(int)asset];
			y = High - image.Height - 16;
			pos = new Vector2(0, y);
			spriteBatch.Draw(image, pos, Color.White);
		}


	}
}
