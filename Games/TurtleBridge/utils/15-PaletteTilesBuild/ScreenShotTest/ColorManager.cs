using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class ColorManager
	{
		public void Load(AnGame game)
		{
			Palette = new Dictionary<string, Texture2D>();
			Palette["#00"] = game.Content.Load<Texture2D>("00_000000");
			Palette["#01"] = game.Content.Load<Texture2D>("01_550000");
			Palette["#02"] = game.Content.Load<Texture2D>("02_aa0000");

			Palette["#19"] = game.Content.Load<Texture2D>("19_55aa55");

			Palette["#2a"] = game.Content.Load<Texture2D>("2a_aaaaaa");
			Palette["#2b"] = game.Content.Load<Texture2D>("2b_ffaaaa");
			Palette["#2c"] = game.Content.Load<Texture2D>("2c_00ffaa");

			Palette["#2d"] = game.Content.Load<Texture2D>("2d_55ffaa");
			Palette["#2e"] = game.Content.Load<Texture2D>("2e_aaffaa");
			Palette["#2f"] = game.Content.Load<Texture2D>("2f_ffffaa");

			Palette["#30"] = game.Content.Load<Texture2D>("30_0000ff");
			Palette["#39"] = game.Content.Load<Texture2D>("39_55aaff");
			Palette["#3f"] = game.Content.Load<Texture2D>("3f_ffffff");
		}

		public IDictionary<string, Texture2D> Palette { get; private set; }
	}
}
