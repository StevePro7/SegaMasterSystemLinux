using System;
using System.Collections.Generic;
using System.IO;

namespace ExtractCheckpoints
{
	public class FileManager
	{
		string[] aa = {
			"AA-bridge01.csv", "AA-bridge02.csv", "AA-bridge03.csv", 
			"AA-island01.csv", "AA-island02.csv", "AA-island03.csv",
			"AA-mixerd01.csv", "AA-mixerd02.csv",
			"AA-dropsd01.csv", "AA-dropsd02.csv",
		};
		string[] bb = {
			"BB-bridge01.csv", "BB-bridge02.csv", "BB-bridge03.csv",
			"BB-island01.csv", "BB-island02.csv", "BB-island03.csv",
			"BB-mixerd01.csv", "BB-mixerd02.csv",
			 "BB-dropsd01.csv", "BB-dropsd02.csv",
		};
		string[] cc = {
			"CC-bridge01.csv",
			"CC-island01.csv",
			"CC-mixerd01.csv", "CC-mixerd02.csv",
			"CC-dropsd01.csv", "CC-dropsd02.csv",
		};
		string[] dd = {
			"DD-bridge01.csv",
			"DD-island01.csv",
			"DD-mixerd01.csv", "DD-mixerd02.csv",
			"DD-dropsd01.csv", "DD-dropsd02.csv",
		};
		string[] xx = { "", "WavesBlock,8", "" };

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

		public void Process()
		{
			//string a = "AA-bridge01.csv";
			//string b = "BB-bridge02.csv";
			//string c = "CC-dropsd02.csv";
			//string d = "DD-mixerd02.csv";

			foreach (var a in aa)
			{
				foreach (var b in bb)
				{
					foreach (var c in cc)
					{
						foreach (var d in dd)
						{
							Build(a, b, c, d);
						}
					}
				}
			}
		}

		private void Build(string a, string b, string c, string d)
		{
			output.Clear();
			var fa = File.ReadAllLines("input/" + a);
			var fb = File.ReadAllLines("input/" + b);
			var fc = File.ReadAllLines("input/" + c);
			var fd = File.ReadAllLines("input/" + d);

			output.AddRange(fa);
			output.AddRange(xx);
			output.AddRange(fb);
			output.AddRange(xx);
			output.AddRange(fc);
			output.AddRange(xx);
			output.AddRange(fd);

			string na = a.Replace(".csv", "");
			string nb = b.Replace(".csv", "");
			string nc = c.Replace(".csv", "");
			string nd = d.Replace(".csv", "");

			string outFile = String.Format("{0}_{1}_{2}_{3}.csv", na, nb, nc, nd);
			var contents = output.ToArray();
			File.WriteAllLines("output/" + outFile, contents);
		}
	}
}
