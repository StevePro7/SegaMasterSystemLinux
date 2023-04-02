using System;
using System.Collections.Generic;
using System.IO;

namespace ConsoidateFiles
{
	public class FileManager
	{
		private const string root = @"D:/GitHub/StevePro8/SegaMasterSystemLinux/TurtleBridge/level/levels2/02-Apr-2023";

		private List<string> output;

		public FileManager()
		{
			output = new List<string>();
		}

		public void Initialize()
		{
			if (!Directory.Exists("output"))
			{
				Directory.CreateDirectory("output");
			}
		}

		public void Process(string directory)
		{
			string world = directory.Substring(6, 2);
			var pathX = String.Format("{0}/{1}/{2}/", root, world, directory);
			var names = String.Format("{0}{1}_NEW.c", pathX, directory);
			if (File.Exists(names))
			{
				File.Delete(names);
			}
			var path1 = pathX + directory + "_01/";
			var path2 = pathX + directory + "_02/";
			var path3 = pathX + directory + "_03/";
			var path4 = pathX + directory + "_04/";

			var file1 = Directory.GetFiles(path1, "*.c");
			var file2 = Directory.GetFiles(path2, "*.c");
			var file3 = Directory.GetFiles(path3, "*.c");
			var file4 = Directory.GetFiles(path4, "*.c");

			var filesX = new List<string>();
			filesX.AddRange(file1);
			filesX.AddRange(file2);
			filesX.AddRange(file3);
			filesX.AddRange(file4);
			string[] files = filesX.ToArray();

			output.Clear();
			output.Add("const unsigned char " + directory + "_txt[] =");
			output.Add("{");

			//var searchPattern = directory + "*.c";
			//var files = Directory.GetFiles("input/", searchPattern);
			
			foreach (var file in files)
			{
				var lines = File.ReadAllLines(file);
				foreach (var line in lines)
				{
					if (line.StartsWith("const") || line.StartsWith("{") || line.StartsWith("}"))
					{
						continue;
					}

					output.Add(line);
				}
			}

			output.Add("};");

			var contents = output.ToArray();
			//var path = String.Format("output/{0}_NEW.c", directory);
			File.WriteAllLines(names, contents);
		}
	}
}
