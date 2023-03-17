using System.Configuration;

namespace ExtractCheckpoints
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
