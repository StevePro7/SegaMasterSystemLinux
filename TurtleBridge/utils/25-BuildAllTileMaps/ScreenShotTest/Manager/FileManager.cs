using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ScreenShotTest
{
	public class FileManager
	{
		private const string outputDirectory = "output";
		private const string tilesDirectory = "tiles";

		public void Initialize()
		{
			InitPath(outputDirectory);
			InitPath(outputDirectory + "/" + tilesDirectory);
			//if (Directory.Exists(OutputDirectory))
			//{
			//	DirectoryInfo di = new DirectoryInfo("output");
			//	foreach (FileInfo fi in di.GetFiles())
			//	{
			//		fi.Delete();
			//	}
			//}
			//else
			//{
			//	Directory.CreateDirectory(outputDirectory);
			//}
			//if (Directory.Exists(outputDirectory + "/" + tilesDirectory))
			//{
			//	DirectoryInfo di = new DirectoryInfo("output");
			//	foreach (FileInfo fi in di.GetFiles())
			//	{
			//		fi.Delete();
			//	}
			//}
			//else
			//{
			//	Directory.CreateDirectory(OutputDirectory);
			//}
		}

		private void InitPath(string path)
		{
			if (Directory.Exists(path))
			{
				DirectoryInfo di = new DirectoryInfo(path);
				foreach (FileInfo fi in di.GetFiles())
				{
					fi.Delete();
				}
			}
			else
			{
				Directory.CreateDirectory(outputDirectory);
			}
		}

		public void SaveTilemap(IList<string> lines, string file)
		{
			var path = $"{OutputDirectory}/{file}.txt";
			var content = lines.ToArray();
			File.WriteAllLines(path, content);
		}

		public string OutputDirectory { get { return outputDirectory; } }
		public string TilesDirectory { get { return tilesDirectory; } }
	}
}
