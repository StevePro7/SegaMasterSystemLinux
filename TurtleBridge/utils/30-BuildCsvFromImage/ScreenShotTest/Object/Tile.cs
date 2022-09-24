using Microsoft.Xna.Framework;

namespace ScreenShotTest
{
	public struct Tile
	{
		public Tile(int key, string name, string hash, Color[] texColors) : this()
		{
			Key = key;
			Name = name;
			Hash = hash;
			TexColors = texColors;
		}

		public int Key { get; private set; }
		public string Name { get; private set; }
		public string Hash { get; private set; }
		public Color[] TexColors { get; private set; }
	}
}
