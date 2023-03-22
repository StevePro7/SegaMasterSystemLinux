using System;
using System.Collections.Generic;
using System.IO;

namespace ExtractCheckpoints
{
	public class FileManager
	{
		private const string root1 = @"E:/GitHub/StevePro8/SegaMasterSystemLinux/TurtleBridge/level/levels/lego/08-points/";
		private const string root2 = @"E:/GitHub/StevePro8/SegaMasterSystemLinux/TurtleBridge/level/levels/lego/10-points_output/";

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
			for (int i = 0; i < 5; i++)
			{
				var j = i + 1;
				var k = j.ToString().PadLeft(2, '0');
				Directory.CreateDirectory("output/" + k);
			}
		}

		public void Process2(string dirX)
		{
			string path = String.Format("{0}{1}/", root2, dirX);
			var dirs = Directory.GetDirectories(path);
			//var dirn = dirs[0];
			foreach (var dirn in dirs)
			{
				var dirt = dirn.Replace(path, String.Empty);
				var name = dirt.Substring(0, 10);
				Build2(dirX, dirn, dirt, name);
			}
		}

		public void Build2(string dirX, string dirn, string dirt, string name)
		{
			var outDir = String.Format("output/{0}/{1}", dirX, name);
			if (Directory.Exists(outDir))
			{
				return;
			}

			Directory.CreateDirectory(outDir);
			var pngFile = Directory.GetFiles(dirn, "*.png");
			var pngSave = String.Format("{0}/{1}.png", outDir, name);
			File.Copy(pngFile[0], pngSave);

			//string path = String.Format("{0}{1}/{2}", root2, dirn, name);
			//var inpFile = File.ReadAllLines(path);
		}
	}
}
