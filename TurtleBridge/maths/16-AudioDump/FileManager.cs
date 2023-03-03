using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace AudioDump
{
	public class FileManager
	{
		private const string root = @"E:/GitHub/StevePro8/SegaMasterSystemLinux/TurtleBridge/sound/SampleTestStrip/";
		//private const string root = @"E:/GitHub/StevePro8/SegaMasterSystemLinux/TurtleBridge/sound/";
		//private const string root = @"E:/GitHub/StevePro8/SegaMasterSystemLinux/TurtleBridge/maths/20-BankBuildSMS/dev/banks/";

		public FileManager()
		{
			Data = new List<FileObject>();
			Lines = new List<string>();
			Names = new List<string>();
		}

		public void DumpFiles(string project)
		{
			string path = String.Format("{0}{1}/dev/banks/", root, project);
			//string path = root;
			var files = Directory.GetFiles(path, "*.h");
			foreach (var file in files)
			{
				DumpFile(project, file);
			}
		}

		public void Sort()
		{
			Data = Data.OrderBy(x => x.Proj).ThenBy(y => y.Bank).ToList();
			//Data = Data.OrderByDescending(x => x.Size).ToList();
		}

		public void Save()
		{
			for (int index = 0; index < Data.Count; index++)
			{
				var item = Data[index];
				string line = String.Format("{0},{1},{2},{3}",
					item.Proj,
					item.Bank,
					item.Name,
					item.Size);
				Lines.Add(line);
			}

			var fileName = "audiodump.csv";
			var contents = Lines.ToArray();
			File.WriteAllLines(fileName, contents);
		}

		public void DumpFile(string proj, string path)
		{
			var lines = File.ReadAllLines(path);

			string line, temp, name;
			int size, bank;
			line = lines[0];
			line = line.Replace("extern const unsigned char	", "");
			line = line.Replace("[];", "");
			line = line.Trim();
			name = line;
			if (name.Contains("GnRSucked"))
			{
				return;
			}

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

			var obj = new FileObject(proj, name, bank, size);
			var ext = Names.Contains(name);
			if (!ext)
			{
				Names.Add(name);
				Data.Add(obj);
			}
		}

		public void Sporadic(string proj, string name, int bank, int size)
		{
			var obj = new FileObject(proj, name, bank, size);
			var ext = Names.Contains(name);
			if (!ext)
			{
				Names.Add(name);
				Data.Add(obj);
			}
		}

		public List<FileObject> Data { get; private set; }
		public List<string> Lines { get; private set; }
		public List<string> Names { get; private set; }
	}
}
