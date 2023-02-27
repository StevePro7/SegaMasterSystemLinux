using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace AudioDump
{
	public class FileManager
	{
		private const string root = @"D:/GitHub/StevePro8/SegaMasterSystemLinux/TurtleBridge/sound/";

		public FileManager()
		{
			Names = new List<string>();
			Banks = new List<string>();
			Sizes = new List<string>();
			Lines = new List<string>();
		}

		public void DumpFiles(string project)
		{
			string path = String.Format("{0}{1}/dev/banks/", root, project);
			var files = Directory.GetFiles(path, "*.h");
			foreach (var file in files)
			{
				DumpFile(file);
			}

			for (int index = 0; index < Names.Count; index++)
			{
				string line = String.Format("{0},{1},{2}", Banks[index], Names[index], Sizes[index]);
				Lines.Add(line);
			}

			var contents = Lines.ToArray();
			File.WriteAllLines(project + ".csv", contents);
		}

		public void DumpFile(string path)
		{
			var lines = File.ReadAllLines(path);

			string line, name, size, bank;
			line = lines[0];
			line = line.Replace("extern const unsigned char	", "");
			line = line.Replace("[];", "");
			line = line.Trim();
			name = line;
			Names.Add(line);

			line = lines[1];
			line = line.Replace("#define				", "");
			size = name + "_size";
			line = line.Replace(size, "");
			line = line.Trim();
			Sizes.Add(line);

			line = lines[2];
			line = line.Replace("#define				", "");
			bank = name + "_bank";
			line = line.Replace(bank, "");
			line = line.Trim();
			Banks.Add(line);
		}

		public List<string> Names { get; private set; }
		public List<string> Banks { get; private set; }
		public List<string> Sizes { get; private set; }
		public List<string> Lines { get; private set; }
	}
}
