using System;
using System.Configuration;

namespace ScreenShotTest
{
	public class ConfigManager
	{
		public ConfigManager()
		{
			NumScreens = GetValue<int>("NumScreens", 8);
			NumLevels = GetValue<int>("NumLevels", 10);
			LevelPrefix = GetValue<string>("LevelPrefix", "level11");
		}

		// Reference: https://stackoverflow.com/questions/6884653/how-to-make-a-generic-type-cast-function
		private T GetValue<T>(string key, T start)
		{
			T value = start;
			string temp;
			if (null != ConfigurationManager.AppSettings[key])
			{
				temp = ConfigurationManager.AppSettings[key];
				value = (T)Convert.ChangeType(temp, typeof(T));
			}

			return value;
		}

		public int NumScreens { get; private set; }
		public int NumLevels { get; private set; }
		public string LevelPrefix { get; private set; }
	}
}
