using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace FunctionMgr
{
	public class FileManager
	{
		private List<string> lines;

		public void Init()
		{
			string path;
			path = "banks";
			if (Directory.Exists(path))
			{
				var dirX = Directory.GetDirectories(path);
				foreach (var dir in dirX)
				{
					var files = Directory.GetFiles(dir);
					foreach (var file in files)
					{
						File.Delete(file);
					}

					Directory.Delete(dir);
				}
			}

			path = "scripts";
			if (Directory.Exists(path))
			{
				var files = Directory.GetFiles(path);
				foreach (var file in files)
				{
					File.Delete(file);
				}
			}

			Directory.CreateDirectory("banks");
			Directory.CreateDirectory("scripts");
			lines = new List<string>();
		}

		public void Build(int bank, List<string> script)
		{
			string name = "bank" + bank.ToString();
			if (Directory.Exists(name))
			{
				var files = Directory.GetFiles(name);
				foreach (var file in files)
				{
					File.Delete(file);
				}
			}

			Directory.CreateDirectory("banks/" + name);

			lines.Clear();
			lines.Add(name);
			var path = string.Format("banks/{0}/{0}.txt", name);
			File.WriteAllLines(path, lines.ToArray());

			path = string.Format("scripts/{0}.bat", name);
			File.WriteAllLines(path, script.ToArray());
		}

	}
}
