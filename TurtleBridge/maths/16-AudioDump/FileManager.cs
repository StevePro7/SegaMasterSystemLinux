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
			Data = new List<FileObject>();
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

			Data = Data.OrderByDescending(x => x.Size).ToList();
			for (int index = 0; index < Data.Count; index++)
			{
				var item = Data[index];
				string line = String.Format("{0},{1},{2}",
					item.Bank,
					item.Name,
					item.Size);
				Lines.Add(line);
			}

			var contents = Lines.ToArray();
			File.WriteAllLines(project + ".csv", contents);
		}

		public void DumpFile(string path)
		{
			var lines = File.ReadAllLines(path);

			string line, temp, name;
			int size, bank;
			line = lines[0];
			line = line.Replace("extern const unsigned char	", "");
			line = line.Replace("[];", "");
			line = line.Trim();
			name = line;

			line = lines[1];
			line = line.Replace("#define				", "");
			temp = name + "_size";
			line = line.Replace(temp, "");
			line = line.Trim();
			size = Convert.ToInt32(line); ;

			line = lines[2];
			line = line.Replace("#define				", "");
			temp = name + "_bank";
			line = line.Replace(temp, "");
			line = line.Trim();
			bank = Convert.ToInt32(line);

			var obj = new FileObject(name, bank, size);
			Data.Add(obj);
		}

		public List<FileObject> Data { get; private set; }
		public List<string> Lines { get; private set; }
	}
}
