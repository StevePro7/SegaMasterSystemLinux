using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output06 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.section03_norm_64x32);
			assets.Add(AssetType.hover_turtleAA00_32x24_00);
			assets.Add(AssetType.hover_turtleAA00_32x24_01);

			Wide = 96;
			High = 112;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset = assets[0];
			Texture2D image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(0, 0), Color.White);

			asset = assets[2];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(64, 0), Color.White);

		}

	}
}
