using System;
using System.Configuration;

namespace StorageManager
{
	public class ConfigManager
	{
		public void Init()
		{
			Single = Convert.ToBoolean(ConfigurationManager.AppSettings["Single"]);
		}

		public bool Single { get; private set; }
	}
}
