using System.Configuration;

namespace ConsoidateFiles
{
	public class ConfigManager
	{
		public void Initialize()
		{
			Directory = ConfigurationManager.AppSettings["directory"];
		}

		public string Directory { get; private set; }
	}
}
