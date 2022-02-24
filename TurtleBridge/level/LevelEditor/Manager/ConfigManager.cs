using System;
using System.Configuration;

namespace LevelEditor
{
	public class ConfigManager
	{
		public void Initialize()
		{
			ScreenWide = GetValue("ScreenWide");
			ScreenHigh = GetValue("ScreenHigh");
			ScreenSize = GetValue("ScreenSize");
			SeaWavesAt = GetValue("SeaWavesAt");

			GridsXWide = ScreenWide / ScreenSize;
			GridsYHigh = ScreenHigh / ScreenSize;
		}

		private static int GetValue(string key)
		{
			return Convert.ToInt32(ConfigurationManager.AppSettings["key"]);
		}

		public int ScreenWide { get; private set; }
		public int ScreenHigh { get; private set; }
		public int ScreenSize { get; private set; }
		public int SeaWavesAt { get; private set; }

		public int GridsXWide { get; private set; }
		public int GridsYHigh { get; private set; }
	}
}
