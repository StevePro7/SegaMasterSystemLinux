using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output05 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			//assets.Add(AssetType.sprite_left_64);
			assets.Add(AssetType.sprite_left_128);
			assets.Add(AssetType.sprite_left_08_256);

			//assets.Add(AssetType.sprite_rght_64);
			//assets.Add(AssetType.sprite_rght_128);
			//assets.Add(AssetType.sprite_rght_08_256);

			Wide = 32;
			High = 384;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			Draw(spriteBatch, 0, 0, 0);
			Draw(spriteBatch, 1, 0, 128);
		}

		private void Draw(SpriteBatch spriteBatch, int idx, int x, int y)
		{
			AssetType asset;
			Texture2D image;
			Vector2 pos;
			asset = assets[idx];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(x, y);
			spriteBatch.Draw(image, pos, Color.White);
		}
	}
}
