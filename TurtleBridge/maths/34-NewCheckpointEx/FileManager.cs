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
		private List<string>[] points;
		//private List<string> point2;
		//private List<string> point3;
		//private List<string> point4;

		public FileManager()
		{
			output = new List<string>();
			points = new List<string>[4];
			for (int i = 0; i < 4; i++)
			{
				points[i] = new List<string>();
			}
			//point2 = new List<string>();
			//point3 = new List<string>();
			//point4 = new List<string>();
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

		public void Process1()
		{
			var files = Directory.GetFiles(root1, "level_05*");
			//var file = files[0];
			foreach (var file in files)
			{
				var text = file.Replace(root1, String.Empty);
				var name = text.Substring(0, 10);
				var dirX = name.Substring(6, 2);
				Build(file, dirX, name);
			}
		}

		public void Build(string file, string dirX, string name)
		{
			int dist = 7;
			if ("03" == dirX || "04" == dirX || "05" == dirX)
			{
				dist = 15;
			}

			var outDir = String.Format("output/{0}/{1}", dirX, name);
			for (int i = 0; i<4;i++)
			{
				points[i].Clear();
				var j = (i + 1).ToString().PadLeft(2, '0');
				var subDir = String.Format("{0}_{1}", name, j);
				if (!Directory.Exists(outDir + "/" + subDir))
				{
					Directory.CreateDirectory(outDir + "/" + subDir);
				}
			}

			//point2.Clear();
			//point3.Clear();
			//point4.Clear();
			
			var linesX = File.ReadAllLines(file);
			int looper = 0;
			foreach (var line in linesX)
			{
				if (line.StartsWith("// AA"))
				{
					looper = 0;
				}
				else if (line.StartsWith("// BB"))
				{
					looper = 1;
				}
				else if (line.StartsWith("// CC"))
				{
					looper = 2;
				}
				else if (line.StartsWith("// DD"))
				{
					looper = 3;
				}

				string text = line;
				if ("WavesBlock,8" == text)
				{
					text = "WavesBlock," + dist * 8;
				}
				points[looper].Add(text);
			}

			for (int i = 0; i < 4; i++)
			{
				var j = (i + 1).ToString().PadLeft(2, '0');
				var subDir = String.Format("{0}_{1}", name, j);
				var path = String.Format("{0}/{1}/{1}.csv", outDir, subDir);
				File.WriteAllLines(path, points[i]);
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
