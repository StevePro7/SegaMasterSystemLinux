using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output04 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			//assets.Add(AssetType.sprites_partial);
			assets.Add(AssetType.sprite_plat01);
			assets.Add(AssetType.sprite_plat02);
			assets.Add(AssetType.sprite_plat03);
			assets.Add(AssetType.sprite_plat04);

			Wide = 32;
			High = 128;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			int x = 0;
			Draw(spriteBatch, 0, x, 0 * 32);
			Draw(spriteBatch, 1, 0, 1 * 32);
			Draw(spriteBatch, 2, x, 2 * 32);
			Draw(spriteBatch, 3, 0, 3 * 32);
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
