using System;
using System.Configuration;

namespace LevelScreen
{
	public class ConfigManager
	{
		public void Initialize()
		{
			Level = ConfigurationManager.AppSettings["Level"];
		}

		public string Level { get; private set; }
		
	}
}
