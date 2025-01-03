﻿using System.Collections.Generic;
using System.IO;

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
				string[] files;
				var dirX = Directory.GetDirectories(path);
				foreach (var dir in dirX)
				{
					files = Directory.GetFiles(dir);
					foreach (var file in files)
					{
						File.Delete(file);
					}

					Directory.Delete(dir);
				}

				files = Directory.GetFiles(path);
				foreach (var file in files)
				{
					File.Delete(file);
				}
			}

			Directory.CreateDirectory("banks");
			lines = new List<string>();
		}

		public void ProcessH()
		{
			var datas = File.ReadAllLines("bobH.txt");
			foreach (var head in datas)
			{
				var text = head.Replace(".h", "_h");
				text = text.ToUpper();
				text = "__CALI_" + text + "__";
				lines.Clear();
				lines.Add("#ifndef " + text);
				lines.Add("#define " + text);
				lines.Add("");
				lines.Add("#endif//" + text);
				File.WriteAllLines("banks/" + head, lines.ToArray());
			}
		}

		public void ProcessC()
		{
			var datas = File.ReadAllLines("bobC.txt");
			//var data = datas[0];
			foreach (var data in datas)
			{
				var head = data.Replace(".c", ".h");
				lines.Clear();
				lines.Add("#include \"" + head + "\"");
				File.WriteAllLines("banks/" + data, lines.ToArray());

				var text = head.Replace(".h", "_h");
				text = text.ToUpper();
				text = "__CALI_" + text + "__";
				lines.Clear();
				lines.Add("#ifndef " + text);
				lines.Add("#define " + text);
				lines.Add("");
				lines.Add("#endif//" + text);
				File.WriteAllLines("banks/" + head, lines.ToArray());
			}
		}

	}
}
