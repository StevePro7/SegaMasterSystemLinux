using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public struct Tile
	{
		public Tile(string name, string hash, Color[] texColors) : this()
		{
			Name = name;
			Hash = hash;
			TexColors = texColors;
		}

		public string Name { get; private set; }
		public string Hash { get; private set; }
		public Color[] TexColors { get; private set; }
	}
}
