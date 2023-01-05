using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output10 : Output, IOutput
	{
		private const int high = 14;

		// col #1.
		// unsigned char sea_line1[] = { 66, 66, 67, 68, };
		// unsigned char sea_line2[] = { 65, 65, 65, 73, };
		// unsigned char sea_line3[] = { 65, 71, 72, 65, };
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.skys_64);
			assets.Add(AssetType.wave_66);
			assets.Add(AssetType.wave_65);
			assets.Add(AssetType.wave_71);
			assets.Add(AssetType.wave_67);
			assets.Add(AssetType.wave_72);

			Wide = 8;
			High = 14 * 8;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			//DrawCol00_14(spriteBatch);
			//DrawCol01_16(spriteBatch);
			DrawCol02_16(spriteBatch);
		}

		private void DrawCol02_16(SpriteBatch spriteBatch)
		{
			var asset = assets[0];
			var image = assetManager.Images[(int)asset];
			var pos = Vector2.Zero;
			for (int row = 0; row < high - 1; row++)
			{
				spriteBatch.Draw(image, pos, Color.White);
				pos.Y += 8;
			}

			asset = assets[4];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, pos, Color.White);
			pos.Y += 8;
			asset = assets[2];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, pos, Color.White);
			pos.Y += 8;
			asset = assets[5];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, pos, Color.White);
			pos.Y += 8;
		}

		private void DrawCol01_16(SpriteBatch spriteBatch)
		{
			var asset = assets[0];
			var image = assetManager.Images[(int)asset];
			var pos = Vector2.Zero;
			for (int row = 0; row < high - 1; row++)
			{
				spriteBatch.Draw(image, pos, Color.White);
				pos.Y += 8;
			}

			asset = assets[1];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, pos, Color.White);
			pos.Y += 8;
			asset = assets[2];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, pos, Color.White);
			pos.Y += 8;
			asset = assets[3];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, pos, Color.White);
			pos.Y += 8;
		}


		private void DrawCol00_16(SpriteBatch spriteBatch)
		{
			var asset = assets[0];
			var image = assetManager.Images[(int)asset];
			var pos = Vector2.Zero;
			for (int row = 0; row < high - 1; row++)
			{
				spriteBatch.Draw(image, pos, Color.White);
				pos.Y += 8;
			}

			asset = assets[1];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, pos, Color.White);
			pos.Y += 8;
			asset = assets[2];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, pos, Color.White);
			pos.Y += 8;
			asset = assets[2];
			image = assetManager.Images[(int)asset];
			spriteBatch.Draw(image, pos, Color.White);
			pos.Y += 8;
		}
	}
}
