using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output09 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.section03_open_64x32_02);
			assets.Add(AssetType.sign_send);
			assets.Add(AssetType.sign_goal);

			Wide = 32;
			High = 112;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			AssetType asset = assets[0];
			Texture2D image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(0, 0), Color.White);

			asset = assets[2];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, new Vector2(0, 112-32-24), Color.White);
		}

	}
}
