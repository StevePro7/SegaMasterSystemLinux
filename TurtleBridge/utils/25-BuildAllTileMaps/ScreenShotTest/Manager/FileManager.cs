using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace ScreenShotTest
{
	public class FileManager
	{
		private const string OutputDirectory = "output";

		public void Initialize(string[] files)
		{
			if (Directory.Exists(OutputDirectory))
			{
				Directory.Delete(OutputDirectory);
			}

			foreach(var file in files)
			{
				var directory = $"{OutputDirectory}_file";
				if (Directory.Exists(directory))
				{
					Directory.Delete(directory);
				}
			}

		}
	}
}
