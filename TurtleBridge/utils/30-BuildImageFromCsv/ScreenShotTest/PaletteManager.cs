using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScreenShotTest
{
	public class PaletteManager
	{
		private IDictionary<string, Texture2D> dict;

		public void Initialize()
		{
			dict = new Dictionary<string, Texture2D>();
		}

		public void LoadContent(ContentManager content)
		{
			dict.Clear();

			dict["#00"] = content.Load<Texture2D>("00_000000");
			dict["#01"] = content.Load<Texture2D>("01_550000");
			dict["#02"] = content.Load<Texture2D>("02_aa0000");
			dict["#03"] = content.Load<Texture2D>("03_ff0000");

			dict["#08"] = content.Load<Texture2D>("08_00aa00");
			dict["#0B"] = content.Load<Texture2D>("0b_ffaa00");
			dict["#0C"] = content.Load<Texture2D>("0c_00ff00");
			dict["#0F"] = content.Load<Texture2D>("0f_ffff00");

			dict["#16"] = content.Load<Texture2D>("16_aa5555");
			dict["#1B"] = content.Load<Texture2D>("1b_ffaa55");

			dict["#2A"] = content.Load<Texture2D>("2a_aaaaaa");
			dict["#2B"] = content.Load<Texture2D>("2b_ffaaaa");

			dict["#30"] = content.Load<Texture2D>("30_0000ff");
			dict["#39"] = content.Load<Texture2D>("39_55aaff");
			dict["#3D"] = content.Load<Texture2D>("3d_55ffff");
			dict["#3F"] = content.Load<Texture2D>("3f_ffffff");

		}

		public IDictionary<string, Texture2D> Dict { get { return dict; } }
	}
}
