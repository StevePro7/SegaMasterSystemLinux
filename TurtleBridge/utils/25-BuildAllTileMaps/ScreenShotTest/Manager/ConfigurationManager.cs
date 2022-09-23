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

			Files = new string[]
			{
				"walk02-test",
				//"font_tiles",
				//"wave_strip",
				//"section01_rght_96x80",
				//"section02_rght_96x48",
				//"section03_norm_64x32",
				//"section04_norm_64x80",
				//"cloud01_32x24",
				//"cloud02_48x24",
				//"sea_turtleAA01_32x24",
				//"sea_turtleBB01_32x24",
				//"sea_turtleAA02_32x24",
				//"sea_turtleBB02_32x24",
				//"hover_turtleAA00_32x24",
				//"hover_turtleBB00_32x24",
				////"sea_turtleAA03_32x24",
				////"sea_turtleAA04_32x24",
				//"flying_turtle01_32x24",
				//"flying_turtle02_32x24",
				//"sign_send",
				//"sign_goal",
			};

			//Files = new string[]
			//{
			//	"font_tiles",
			//	"wave_strip",
			//	"wonderboy32_01",
			//	"wonderboy32_02",
			//	"wonderboy32_03",
			//	"cloud01_32x24",
			//	"cloud02_48x24",
			//	"sea_turtleAA01_32x24",
			//	"sea_turtleAA02_32x24",
			//	"sea_turtleAA03_32x24",
			//	"sea_turtleBB01_32x24",
			//	"sea_turtleBB02_32x24",
			//	"sea_turtleBB03_32x24",
			//	"flying_turtle01_32x24",
			//	"flying_turtle02_32x24",
			//	"sign_send",
			//	"sign_goal",
			//};
		}

		public string[] Files { get; private set; }
	}
}
