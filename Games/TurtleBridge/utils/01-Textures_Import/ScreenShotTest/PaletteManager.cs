using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScreenShotTest
{
	public class PaletteManager
	{
		public PaletteManager()
		{
			PaletteDictionary = GetPaletteDictionary();
		}

		public IDictionary<string, string> PaletteDictionary { get; private set; }

		private IDictionary<string, string> GetPaletteDictionary()
		{
			return new Dictionary<string, string>
			{
				{ "$00","#000000"},
				{ "$01","#550000"},
				{ "$02","#aa0000"},
				{ "$03","#ff0000"},
				{ "$04","#005500"},
				{ "$05","#555500"},
				{ "$06","#aa5500"},
				{ "$07","#ff5500"},
				{ "$08","#00aa00"},
				{ "$09","#55aa00"},
				{ "$0a","#aaaa00"},
				{ "$0b","#ffaa00"},
				{ "$0c","#00ff00"},
				{ "$0d","#55ff00"},
				{ "$0e","#aaff00"},
				{ "$0f","#ffff00"},
				{ "$10","#000055"},
				{ "$11","#550055"},
				{ "$12","#aa0055"},
				{ "$13","#ff0055"},
				{ "$14","#005555"},
				{ "$15","#555555"},
				{ "$16","#aa5555"},
				{ "$17","#ff5555"},
				{ "$18","#00aa55"},
				{ "$19","#55aa55"},
				{ "$1a","#aaaa55"},
				{ "$1b","#ffaa55"},
				{ "$1c","#00ff55"},
				{ "$1d","#55ff55"},
				{ "$1e","#aaff55"},
				{ "$1f","#ffff55"},
				{ "$20","#0000aa"},
				{ "$21","#5500aa"},
				{ "$22","#aa00aa"},
				{ "$23","#ff00aa"},
				{ "$24","#0055aa"},
				{ "$25","#5555aa"},
				{ "$26","#aa55aa"},
				{ "$27","#ff55aa"},
				{ "$28","#00aaaa"},
				{ "$29","#55aaaa"},
				{ "$2a","#aaaaaa"},
				{ "$2b","#ffaaaa"},
				{ "$2c","#00ffaa"},
				{ "$2d","#55ffaa"},
				{ "$2e","#aaffaa"},
				{ "$2f","#ffffaa"},
				{ "$30","#0000ff"},
				{ "$31","#5500ff"},
				{ "$32","#aa00ff"},
				{ "$33","#ff00ff"},
				{ "$34","#0055ff"},
				{ "$35","#5555ff"},
				{ "$36","#aa55ff"},
				{ "$37","#ff55ff"},
				{ "$38","#00aaff"},
				{ "$39","#55aaff"},
				{ "$3a","#aaaaff"},
				{ "$3b","#ffaaff"},
				{ "$3c","#00ffff"},
				{ "$3d","#55ffff"},
				{ "$3e","#aaffff"},
				{ "$3f","#ffffff"},
			};
		}
	}
}
