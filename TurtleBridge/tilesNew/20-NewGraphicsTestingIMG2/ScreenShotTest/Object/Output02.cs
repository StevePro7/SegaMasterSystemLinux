using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output02 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			////assets.Add(AssetType.x00_font_tiles_yellow_192x24_05);
			//assets.Add(AssetType.x00_font_tiles_yellow_192x24_06);

			//assets.Add(AssetType.x01_waves_block_32x112);
			//assets.Add(AssetType.x01_section02_left_64x112);
			//assets.Add(AssetType.x01_section02_left_goal00);
			//assets.Add(AssetType.x01_section02_left_sign01);

			//assets.Add(AssetType.x02_section03_norm_64x32);
			//assets.Add(AssetType.x02_section03_open_64x32_02);
			//assets.Add(AssetType.x02_section03_open_64x32_03);

			//assets.Add(AssetType.x03_section03_tree_64x32_01);
			//assets.Add(AssetType.x03_section03_tree_64x32_02);
			//assets.Add(AssetType.x03_section03_tree_64x32_03);

			//assets.Add(AssetType.x04_hover_turtleAA00_32x24_00);
			//assets.Add(AssetType.x04_hover_turtleAA00_32x24_01);
			//assets.Add(AssetType.x04_flying_turtle01_32x24_00);
			//assets.Add(AssetType.x04_flying_turtle01_32x24_01);
			//assets.Add(AssetType.x04_flying_turtle01_32x24_02);
			//assets.Add(AssetType.x04_flying_turtle01_32x24_03);

			//assets.Add(AssetType.x05_clouds_192x24);
			//assets.Add(AssetType.x06_titlescreenPlay);

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
			y += 24;
			DrawAsset(spriteBatch, AssetType.x01_waves_block_32x112, 0, y);
			DrawAsset(spriteBatch, AssetType.x01_section02_left_64x112, 32, y);
			DrawAsset(spriteBatch, AssetType.x01_section02_left_sign01, 96, y);
			DrawAsset(spriteBatch, AssetType.x01_section02_left_goal00, 128, y);
			DrawAsset(spriteBatch, AssetType.x01_waves_block_32x112, 160, y);

			// Asset #2.
			y += 112;
			//DrawAsset(spriteBatch, AssetType.x02_section03_norm_64x32, 0, y);
			//DrawAsset(spriteBatch, AssetType.x02_section03_open_64x32_02, 64, y);
			//DrawAsset(spriteBatch, AssetType.x02_section03_open_64x32_03, 128, y);
			//DrawAsset(spriteBatch, AssetType.islands01, 0, y);
			//DrawAsset(spriteBatch, AssetType.islands02, 64, y);
			//DrawAsset(spriteBatch, AssetType.islands03, 128, y);

			//// Asset #3.
			//y += 112;
			//DrawAsset(spriteBatch, AssetType.islands04, 0, y);
			//DrawAsset(spriteBatch, AssetType.islands05, 64, y);
			//DrawAsset(spriteBatch, AssetType.islands06, 128, y);
			//DrawAsset(spriteBatch, AssetType.x03_section03_tree_64x32_01, 0, y);
			//DrawAsset(spriteBatch, AssetType.x03_section03_tree_64x32_02, 64, y);
			//DrawAsset(spriteBatch, AssetType.x03_section03_tree_64x32_03, 128, y);

			// Asset #4.
			y += 112;
			DrawAsset(spriteBatch, AssetType.x04_hover_turtleAA00_32x24_00, 0, y);
			DrawAsset(spriteBatch, AssetType.x04_hover_turtleAA00_32x24_01, 32, y);
			DrawAsset(spriteBatch, AssetType.x04_flying_turtle01_32x24_00, 64, y);
			DrawAsset(spriteBatch, AssetType.x04_flying_turtle01_32x24_01, 96, y);
			DrawAsset(spriteBatch, AssetType.x04_flying_turtle01_32x24_02, 128, y);
			DrawAsset(spriteBatch, AssetType.x04_flying_turtle01_32x24_03, 160, y);

			// Asset #5.
			y += 112;
			DrawAsset(spriteBatch, AssetType.x05_clouds_192x24, 0, y);

			// Asset #6.
			y += 24;
			DrawAsset(spriteBatch, AssetType.x06_titlescreenPlay, 0, y);
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
