using System;
using System.Configuration;

namespace ScreenShotTest
{
	public class ConfigManager
	{
		public ConfigManager()
		{
			NumScreens = 8;
			if (ConfigurationManager.AppSettings["NumScreens"] != null)
			{
				NumScreens = Convert.ToInt32(ConfigurationManager.AppSettings["NumScreens"]);
			}
		}

		public int NumScreens { get; private set; }
	}
}
