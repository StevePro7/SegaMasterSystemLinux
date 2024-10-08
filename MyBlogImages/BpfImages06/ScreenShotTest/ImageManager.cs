using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class ImageManager
	{
		private const int MAX = 4;

		private string[] names = new string[MAX]
{
			"gym-retro-integration-debug",
			"gym-retro-integration-tests",
			"SelectCMakeLists01",
			"SelectCMakeLists02",
		};

		//private string[] names = new string[MAX]
		//{
		//	"RetroCheatSheetProject",
		//	"RetroCheatSheetVenv",
		//};

		//private string[] names = new string[MAX]
		//{
		//	"AlienSyndrome-Sms",
		//	"BladeEagle-Sms",
		//	"DickTracy-Sms",
		//	"JamesPond2CodenameRoboCod-Sms",
		//	"RType-Sms",
		//	"Shinobi-Sms",
		//	"SonicTheHedgehog-Sms",
		//	"Transbot-Sms",
		//	"AlteredBeast-Genesis",
		//	"Flicky-Genesis",
		//	"GhoulsnGhosts-Genesis",
		//	"RevengeOfShinobi-Genesis",
		//	"SonicTheHedgehog2-Genesis",
		//	"SonicTheHedgehog3-Genesis",
		//	"StreetsOfRage2-Genesis",
		//	"Strider-Genesis",
		//};

		//private string[] names = new string[MAX] 
		//{
		//	"FarmaRetroVenv",
		//	"ForkRetro02",
		//	"ForkRetro05",
		//	"HelloGymRetro",
		//	"HelloStableRetro",
		//	"StableRetroVenv",
		//	"gym-retro-integration",
		//	"gym-retro-integration-cmake",
		//	"gym-retro-integration-debug",
		//};

		public void Load(ContentManager content)
		{
			Images = new Dictionary<string, Texture2D>();
			for (int idx = 0; idx < MAX; idx++)
			{
				string name = names[idx];
				Images[name] = content.Load<Texture2D>(names[idx]);
			}
		}

		public void Draw(string name)
		{
		}

		public IDictionary<string, Texture2D> Images { get; private set; }
	}
}
