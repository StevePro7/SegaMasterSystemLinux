using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output03 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			//assets.Add(AssetType.sprites_partial);
			assets.Add(AssetType.sprite_flip01);
			assets.Add(AssetType.sprite_flip02);
			assets.Add(AssetType.sprite_flip03);
			assets.Add(AssetType.sprite_flip04);
			assets.Add(AssetType.sprite_flip05);
			assets.Add(AssetType.sprite_flip06);
			assets.Add(AssetType.sprite_flip07);
			assets.Add(AssetType.sprite_flip08);

			Wide = 32;
			High = 256;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			int x = 0;
			Draw(spriteBatch, 0, x, 0 * 32);
			Draw(spriteBatch, 1, 0, 1 * 32);
			Draw(spriteBatch, 2, x, 2 * 32);
			Draw(spriteBatch, 3, 0, 3 * 32);
			Draw(spriteBatch, 4, x, 4 * 32);
			Draw(spriteBatch, 5, 0, 5 * 32);
			Draw(spriteBatch, 6, x, 6 * 32);
			Draw(spriteBatch, 7, 0, 7 * 32);
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
