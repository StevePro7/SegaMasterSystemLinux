using System;
using System.Configuration;

namespace ScreenShotTest
{
	public class ConfigManager
	{
		public void Init()
		{
			Save = Convert.ToBoolean(ConfigurationManager.AppSettings["Save"]);
			Name = Convert.ToString(ConfigurationManager.AppSettings["Name"]);
			Left = Convert.ToInt32(ConfigurationManager.AppSettings["Left"]);
			Rght = Convert.ToInt32(ConfigurationManager.AppSettings["Rght"]);
			UpXX = Convert.ToInt32(ConfigurationManager.AppSettings["UpXX"]);
			Down = Convert.ToInt32(ConfigurationManager.AppSettings["Down"]);
		}

		public bool Save { get; private set; }
		public string Name { get; private set; }
		public int Left { get; private set; }
		public int Rght { get; private set; }
		public int UpXX { get; private set; }
		public int Down { get; private set; }
	}
}
