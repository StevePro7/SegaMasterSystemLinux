using System;
using System.Collections.Generic;
using System.IO;

namespace ExtractCheckpoints
{
	public class FileManager
	{
		
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
			int world = 1;
			int round = 1;
			var lines = GetLines();
			//var line = "AA-bridge01,BB-bridge03,CC-bridge01,DD-bridge01,XX-ending01";
			foreach (var line in lines)
			{
				var info = line.Split(new char[] { ',' });
				string a = info[0] + ".csv";
				string b = info[1] + ".csv";
				string c = info[2] + ".csv";
				string d = info[3] + ".csv";
				string x = info[4] + ".csv";
				Build(a, b, c, d, x, world, round);
				round++;
				if (round > 8)
				{
					round = 1;
					world++;
				}
			}
		}

		public void Process2()
		{
			var dict1 = new SortedDictionary<string, int>();
			var dict2 = new SortedDictionary<string, int>();
			var dict3 = new SortedDictionary<string, int>();
			var dict4 = new SortedDictionary<string, int>();

			var lines = GetLines();
			//var line = "AA-bridge01,BB-bridge03,CC-bridge01,DD-bridge01,XX-ending01";
			foreach (var line in lines)
			{
				var info = line.Split(new char[] { ',' });
				string a = info[0];
				string b = info[1];
				string c = info[2];
				string d = info[3];
				if (dict1.ContainsKey(a))
				{
					dict1[a]++;
				}
				else
				{
					dict1.Add(a, 1);
				}
				if (dict2.ContainsKey(b))
				{
					dict2[b]++;
				}
				else
				{
					dict2.Add(b, 1);
				}
				if (dict3.ContainsKey(c))
				{
					dict3[c]++;
				}
				else
				{
					dict3.Add(c, 1);
				}
				if (dict4.ContainsKey(d))
				{
					dict4[d]++;
				}
				else
				{
					dict4.Add(d, 1);
				}
			}

			int c1 = dict1.Keys.Count;
			int c2 = dict2.Keys.Count;
			int c3 = dict3.Keys.Count;
			int c4 = dict4.Keys.Count;

			foreach (var k in dict4)
			{
				string msg = String.Format("{0},{1}", k.Key, k.Value);
				Console.WriteLine(msg);
			}
		}

		private void Build(string a, string b, string c, string d, string x, int w, int r)
		{
			output.Clear();
			var fa = File.ReadAllLines("input/" + a);
			var fb = File.ReadAllLines("input/" + b);
			var fc = File.ReadAllLines("input/" + c);
			var fd = File.ReadAllLines("input/" + d);
			var fx = File.ReadAllLines("inpux/" + x);

			output.AddRange(fa);
			output.AddRange(xx);
			output.AddRange(fb);
			output.AddRange(xx);
			output.AddRange(fc);
			output.AddRange(xx);
			output.AddRange(fd);
			output.Add("");
			output.AddRange(fx);

			string na = a.Replace(".csv", "");
			string nb = b.Replace(".csv", "");
			string nc = c.Replace(".csv", "");
			string nd = d.Replace(".csv", "");

			string wd = w.ToString().PadLeft(2, '0');
			string rd = r.ToString().PadLeft(2, '0');
			string outFile = String.Format("level_{0}{1}_{2}_{3}_{4}_{5}.csv", wd, rd, na, nb, nc, nd);
			var contents = output.ToArray();
			File.WriteAllLines("output/" + outFile, contents);
		}

		private string[] GetLines()
		{
			return new string[]
			{
				"AA-bridge01,BB-bridge03,CC-bridge01,DD-bridge01,XX-ending01",
				"AA-island03,BB-island03,CC-island01,DD-island01,XX-ending02",
				"AA-bridge02,BB-island01,CC-bridge01,DD-island01,XX-ending01",
				"AA-mixerd01,BB-bridge02,CC-island01,DD-bridge01,XX-ending02",
				"AA-island01,BB-island03,CC-mixerd02,DD-bridge01,XX-ending01",
				"AA-island02,BB-mixerd01,CC-bridge01,DD-island01,XX-ending02",
				"AA-bridge03,BB-bridge01,CC-island01,DD-island01,XX-ending01",
				"AA-bridge02,BB-island02,CC-bridge01,DD-mixerd02,XX-ending02",
				"AA-mixerd01,BB-bridge02,CC-bridge01,DD-island01,XX-ending01",
				"AA-bridge01,BB-mixerd02,CC-bridge01,DD-island01,XX-ending01",
				"AA-mixerd02,BB-bridge03,CC-island01,DD-bridge01,XX-ending02",
				"AA-island03,BB-island03,CC-island01,DD-bridge01,XX-ending02",
				"AA-bridge02,BB-mixerd01,CC-bridge01,DD-island01,XX-ending01",
				"AA-island01,BB-bridge02,CC-mixerd01,DD-island01,XX-ending01",
				"AA-bridge02,BB-island02,CC-island01,DD-mixerd02,XX-ending02",
				"AA-island02,BB-bridge03,CC-island01,DD-bridge01,XX-ending02",
				"AA-island01,BB-island03,CC-mixerd01,DD-bridge01,XX-ending02",
				"AA-bridge01,BB-mixerd01,CC-mixerd02,DD-island01,XX-ending02",
				"AA-mixerd01,BB-island02,CC-bridge01,DD-mixerd01,XX-ending01",
				"AA-island03,BB-bridge03,CC-bridge01,DD-mixerd02,XX-ending01",
				"AA-bridge02,BB-bridge02,CC-mixerd02,DD-bridge01,XX-ending02",
				"AA-island02,BB-mixerd02,CC-bridge01,DD-island01,XX-ending02",
				"AA-dropsd01,BB-bridge03,CC-bridge01,DD-bridge01,XX-ending01",
				"AA-bridge01,BB-dropsd02,CC-island01,DD-mixerd02,XX-ending01",
				"AA-dropsd02,BB-mixerd01,CC-bridge01,DD-island01,XX-ending01",
				"AA-island01,BB-dropsd01,CC-island01,DD-dropsd02,XX-ending01",
				"AA-dropsd01,BB-bridge02,CC-mixerd02,DD-mixerd02,XX-ending02",
				"AA-mixerd02,BB-mixerd01,CC-island01,DD-bridge01,XX-ending01",
				"AA-mixerd01,BB-bridge03,CC-dropsd01,DD-island01,XX-ending01",
				"AA-bridge01,BB-bridge02,CC-bridge01,DD-dropsd01,XX-ending02",
				"AA-island02,BB-island02,CC-dropsd01,DD-island01,XX-ending01",
				"AA-bridge02,BB-dropsd01,CC-mixerd01,DD-bridge01,XX-ending02",
				"AA-mixerd02,BB-island01,CC-dropsd02,DD-dropsd02,XX-ending02",
				"AA-dropsd01,BB-bridge01,CC-island01,DD-mixerd01,XX-ending02",
				"AA-dropsd02,BB-mixerd02,CC-dropsd01,DD-bridge01,XX-ending01",
				"AA-mixerd01,BB-mixerd01,CC-dropsd02,DD-mixerd01,XX-ending02",
				"AA-mixerd02,BB-dropsd02,CC-bridge01,DD-dropsd01,XX-ending02",
				"AA-bridge03,BB-island01,CC-mixerd02,DD-dropsd01,XX-ending01",
				"AA-dropsd02,BB-bridge01,CC-dropsd02,DD-mixerd01,XX-ending02",
				"AA-island03,BB-mixerd02,CC-mixerd01,DD-dropsd02,XX-ending01",
			};
		}
	}
}
