using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace FunctionMgr
{
	public class FileManager
	{
		public void Init()
		{
			string path;
			path = "bank_output";
			if (Directory.Exists(path))
			{
				var files = Directory.GetFiles(path);
				foreach (var file in files)
				{
					File.Delete(file);
				}
			}
			path = "riff_output";
			if (Directory.Exists(path))
			{
				var files = Directory.GetFiles(path);
				foreach (var file in files)
				{
					File.Delete(file);
				}
			}
		}
	}
}
