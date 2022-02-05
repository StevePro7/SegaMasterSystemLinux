using System;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScreenShotTest
{
	public class ConfigurationManager
	{
		public void Initialize()
		{
			string files = String.Empty;
			if (System.Configuration.ConfigurationManager.AppSettings["files"] != null)
			{
				files = System.Configuration.ConfigurationManager.AppSettings["files"];
				Files = files.Split(new char[] { ',' });
			}
			else
			{
				Files = new string[0];
			}
		}

		public string[] Files { get; private set; }
	}
}
