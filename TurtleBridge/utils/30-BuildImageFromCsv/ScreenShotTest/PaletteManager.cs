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
			dict["#04"] = content.Load<Texture2D>("04_005500");
			dict["#05"] = content.Load<Texture2D>("05_555500");
			dict["#06"] = content.Load<Texture2D>("06_aa5500");
			dict["#07"] = content.Load<Texture2D>("07_ff5500");
			dict["#08"] = content.Load<Texture2D>("08_00aa00");
			dict["#09"] = content.Load<Texture2D>("09_55aa00");
			dict["#0A"] = content.Load<Texture2D>("0A_aaaa00");
			dict["#0B"] = content.Load<Texture2D>("0B_ffaa00");
			dict["#0C"] = content.Load<Texture2D>("0C_00ff00");
			dict["#0D"] = content.Load<Texture2D>("0D_55ff00");
			dict["#0E"] = content.Load<Texture2D>("0E_aaff00");
			dict["#0F"] = content.Load<Texture2D>("0F_ffff00");
			dict["#10"] = content.Load<Texture2D>("10_000055");
			dict["#11"] = content.Load<Texture2D>("11_550055");
			dict["#12"] = content.Load<Texture2D>("12_aa0055");
			dict["#13"] = content.Load<Texture2D>("13_ff0055");
			dict["#14"] = content.Load<Texture2D>("14_005555");
			dict["#15"] = content.Load<Texture2D>("15_555555");
			dict["#16"] = content.Load<Texture2D>("16_aa5555");
			dict["#17"] = content.Load<Texture2D>("17_ff5555");
			dict["#18"] = content.Load<Texture2D>("18_00aa55");
			dict["#19"] = content.Load<Texture2D>("19_55aa55");
			dict["#1A"] = content.Load<Texture2D>("1A_aaaa55");
			dict["#1B"] = content.Load<Texture2D>("1B_ffaa55");
			dict["#1C"] = content.Load<Texture2D>("1C_00ff55");
			dict["#1D"] = content.Load<Texture2D>("1D_55ff55");
			dict["#1E"] = content.Load<Texture2D>("1E_aaff55");
			dict["#1F"] = content.Load<Texture2D>("1F_ffff55");
			dict["#20"] = content.Load<Texture2D>("20_0000aa");
			dict["#21"] = content.Load<Texture2D>("21_5500aa");
			dict["#22"] = content.Load<Texture2D>("22_aa00aa");
			dict["#23"] = content.Load<Texture2D>("23_ff00aa");
			dict["#24"] = content.Load<Texture2D>("24_0055aa");
			dict["#25"] = content.Load<Texture2D>("25_5555aa");
			dict["#26"] = content.Load<Texture2D>("26_aa55aa");
			dict["#27"] = content.Load<Texture2D>("27_ff55aa");
			dict["#28"] = content.Load<Texture2D>("28_00aaaa");
			dict["#29"] = content.Load<Texture2D>("29_55aaaa");
			dict["#2A"] = content.Load<Texture2D>("2A_aaaaaa");
			dict["#2B"] = content.Load<Texture2D>("2B_ffaaaa");
			dict["#2C"] = content.Load<Texture2D>("2C_00ffaa");
			dict["#2D"] = content.Load<Texture2D>("2D_55ffaa");
			dict["#2E"] = content.Load<Texture2D>("2E_aaffaa");
			dict["#2F"] = content.Load<Texture2D>("2F_ffffaa");
			dict["#30"] = content.Load<Texture2D>("30_0000ff");
			dict["#31"] = content.Load<Texture2D>("31_5500ff");
			dict["#32"] = content.Load<Texture2D>("32_aa00ff");
			dict["#33"] = content.Load<Texture2D>("33_ff00ff");
			dict["#34"] = content.Load<Texture2D>("34_0055ff");
			dict["#35"] = content.Load<Texture2D>("35_5555ff");
			dict["#36"] = content.Load<Texture2D>("36_aa55ff");
			dict["#37"] = content.Load<Texture2D>("37_ff55ff");
			dict["#38"] = content.Load<Texture2D>("38_00aaff");
			dict["#39"] = content.Load<Texture2D>("39_55aaff");
			dict["#3A"] = content.Load<Texture2D>("3A_aaaaff");
			dict["#3B"] = content.Load<Texture2D>("3B_ffaaff");
			dict["#3C"] = content.Load<Texture2D>("3C_00ffff");
			dict["#3D"] = content.Load<Texture2D>("3D_55ffff");
			dict["#3E"] = content.Load<Texture2D>("3E_aaffff");
			dict["#3F"] = content.Load<Texture2D>("3F_ffffff");

		}

		public IDictionary<string, Texture2D> Dict { get { return dict; } }
	}
}
