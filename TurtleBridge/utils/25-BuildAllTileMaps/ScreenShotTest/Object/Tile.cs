using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public struct Tile
	{
		public string Name { get; private set; }
		public string Hash { get; private set; }
		public Color[] TexColors { get; private set; }
	}
}
