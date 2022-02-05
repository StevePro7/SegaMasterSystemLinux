using System.Collections.Generic;
using System.IO;
using System.Linq;

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

		public void SaveTilemap(IList<string> lines, string file)
		{
			var path = $"{OutputDirectory}/{file}.txt";
			var content = lines.ToArray();
			File.WriteAllLines(path, content);
		}
	}
}
