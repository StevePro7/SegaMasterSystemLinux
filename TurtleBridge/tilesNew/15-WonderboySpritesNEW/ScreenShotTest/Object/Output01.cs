using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output01 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			assets.Add(AssetType.sprites_partial);
			assets.Add(AssetType.sprite_top01);
			assets.Add(AssetType.sprite_top02);
			assets.Add(AssetType.sprite_top03);
			assets.Add(AssetType.sprite_top04);
			Wide = 32;
			High = 32;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			int x = 8;
			AssetType asset;
			Texture2D image;
			Vector2 pos;
			asset = assets[4];
			image = assetManager.Images[(int)asset];
			pos = new Vector2(x, 0);
			spriteBatch.Draw(image, pos, Color.White);
		}

	}
}
