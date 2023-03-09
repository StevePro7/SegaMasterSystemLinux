using System;
using System.Configuration;

namespace ScreenShotTest
{
	public class ConfigManager
	{
		public ConfigManager()
		{
			NumScreens = GetValue<int>("NumScreens", 16);
			NumWorld = GetValue<int>("NumWorld", 10);
			NumRound = GetValue<int>("NumRound", 10);
			NumBank = GetValue<int>("NumBank", 10);
			TheCopy = GetValue<bool>("TheCopy", false);
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
		public int NumWorld { get; private set; }
		public int NumRound { get; private set; }
		public int NumBank { get; private set; }
		public bool TheCopy { get; private set; }
	}
}
