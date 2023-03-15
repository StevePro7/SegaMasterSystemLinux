using System;
using System.Configuration;

namespace LevelScreen
{
	public class ConfigManager
	{
		public void Initialize()
		{
			Level = ConfigurationManager.AppSettings["Level"];
			Saves = Convert.ToBoolean(ConfigurationManager.AppSettings["Saves"]);
		}

		public string Level { get; private set; }
		public bool Saves { get; private set; }
	}
}
