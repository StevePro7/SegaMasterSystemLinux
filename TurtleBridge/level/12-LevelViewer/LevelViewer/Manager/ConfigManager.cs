using System;
using System.Configuration;

namespace LevelScreen
{
	public class ConfigManager
	{
		public void Initialize()
		{
			ScreenWide = GetValue("ScreenWide");
			ScreenHigh = GetValue("ScreenHigh");
			ScreenSize = GetValue("ScreenSize");
			//ScreenBott = ScreenHigh + 2 * ScreenSize;

			SeaWavesAt = GetValue("SeaWavesAt");
			if (SeaWavesAt < 2 || SeaWavesAt > 5)
			{
				SeaWavesAt = 3;
			}

			GridsXWide = ScreenWide / ScreenSize;
			GridsYHigh = ScreenHigh / ScreenSize;
		}

		//public void Decrement()
		//{
		//	if (SeaWavesAt > 2)
		//	{
		//		SeaWavesAt--;
		//	}
		//}
		//public void Increment()
		//{
		//	if (SeaWavesAt < 5)
		//	{
		//		SeaWavesAt++;
		//	}
		//}
		
		private static int GetValue(string key)
		{
			return Convert.ToInt32(ConfigurationManager.AppSettings[key]);
		}

		public int ScreenWide { get; private set; }
		public int ScreenHigh { get; private set; }
		public int ScreenSize { get; private set; }
		//public int ScreenBott { get; private set; }
		public int SeaWavesAt { get; private set; }

		public int GridsXWide { get; private set; }
		public int GridsYHigh { get; private set; }
	}
}
