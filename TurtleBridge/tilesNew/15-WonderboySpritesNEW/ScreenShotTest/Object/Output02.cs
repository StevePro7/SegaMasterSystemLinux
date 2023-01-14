using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output02 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			assets.Add(AssetType.sprites_partial);
			Wide = 32;
			High = 32;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			int idx = 7;

			AssetType asset;
			Texture2D image;
			Vector2 pos;
			Rectangle rect;
			
			asset = assets[0];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(0, 0);
			rect = new Rectangle(0, idx * 32, 32, 32);
			spriteBatch.Draw(image, pos, rect, Color.White);
		}

	}
}
