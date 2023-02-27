using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
		}

		public void DumpFiles(string project)
		{
			string path = String.Format("{0}{1}/dev/banks/", root, project);
			var files = Directory.GetFiles(path, "*.h");
			foreach (var file in files)
			{
				DumpFiles(file);
			}
		}

		public void DumpFile(string file)
		{
			string path = String.Format("{0}SampleTest01/dev/banks/{1}", root, file);
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
	}
}
