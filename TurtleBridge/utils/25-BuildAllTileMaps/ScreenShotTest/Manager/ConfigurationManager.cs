using System;

namespace ScreenShotTest
{
	public class ConfigurationManager
	{
		public void Initialize()
		{
			//string files = String.Empty;
			//if (System.Configuration.ConfigurationManager.AppSettings["files"] != null)
			//{
			//	files = System.Configuration.ConfigurationManager.AppSettings["files"];
			//	Files = files.Split(new char[] { ',' });
			//}
			//else
			//{
			//	Files = new string[0];
			//}

			Files = new string[17]
			{
				"font_tiles",
				"wave_strip",
				"sea_turtleAA01_32x24",
				"sea_turtleAA02_32x24",
				"sea_turtleAA03_32x24",
				"sea_turtleBB01_32x24",
				"sea_turtleBB02_32x24",
				"sea_turtleBB03_32x24",
				"flying_turtle01_32x24",
				"flying_turtle02_32x24",
				"cloud01_32x24",
				"cloud02_48x24",
				"goal_sign",
				"sign02",
				"wonderboy32_01",
				"wonderboy32_02",
				"wonderboy32_03",
			};
		}

		public string[] Files { get; private set; }
	}
}
