using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output01 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.x00_font_tiles_yellow_192x24_05);
			//assets.Add(AssetType.x00_font_tiles_yellow_192x24_06);

			assets.Add(AssetType.x01_waves_block_32x112);
			assets.Add(AssetType.x01_section02_left_64x112);
			assets.Add(AssetType.x01_section02_left_goal00);
			assets.Add(AssetType.x01_section02_left_sign01);


			Wide = 192;
			High = 24 + 112 + 112 + 112 + 112 + 24 + 24;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			int y = 0;

			// Asset #0.
			DrawAsset(spriteBatch, AssetType.x00_font_tiles_yellow_192x24_05, 0, y);
			//DrawAsset(spriteBatch, AssetType.x00_font_tiles_yellow_192x24_06, 0, y);

			// Asset #1.
			y = 24;
			DrawAsset(spriteBatch, AssetType.x01_waves_block_32x112, 0, y);
			DrawAsset(spriteBatch, AssetType.x01_section02_left_64x112, 32, y);
			DrawAsset(spriteBatch, AssetType.x01_section02_left_sign01, 96, y);
			DrawAsset(spriteBatch, AssetType.x01_section02_left_goal00, 128, y);
			DrawAsset(spriteBatch, AssetType.x01_waves_block_32x112, 160, y);
		}

		private void DrawAsset(SpriteBatch spriteBatch, AssetType asset, int x, int y)
		{
			Texture2D image;
			Vector2 pos;
			int idx = (int)asset;

			image = assetManager.Images[idx];
			pos = new Vector2(x, y);
			spriteBatch.Draw(image, pos, Color.White);
		}
	}
}
