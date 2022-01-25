using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.IO;

namespace ScreenShotTest
{	
	public class ImageManager
	{
		Texture2D texture;
		int width, height;
		Color[] texColors;
		Color[] newColors;

		public void LoadContent(Texture2D texture)
		{
			this.texture = texture;
			width = texture.Width;
			height = texture.Height;

			texColors = new Color[width * height];
			newColors = new Color[width * height];

			texture.GetData(texColors);
		}
	}
}
