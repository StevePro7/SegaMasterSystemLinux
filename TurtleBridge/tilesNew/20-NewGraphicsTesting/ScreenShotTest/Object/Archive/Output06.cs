using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output06 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.skys_64);
			assets.Add(AssetType.wave_65);
			assets.Add(AssetType.wave_66);
			assets.Add(AssetType.wave_67);
			assets.Add(AssetType.wave_68);
			assets.Add(AssetType.wave_69);
			assets.Add(AssetType.wave_70);
			assets.Add(AssetType.wave_71);
			assets.Add(AssetType.wave_72);
			assets.Add(AssetType.wave_73);

			Wide = 8;
			High = 14 * 8;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			int x = 0;
			int y = 0;
			int idx = 0;
			var asset = assets[idx];
			var image = assetManager.Images[(int)asset];
			var pos = new Vector2(x, y);
			spriteBatch.Draw(image, pos, Color.White);
		}
	}
}
