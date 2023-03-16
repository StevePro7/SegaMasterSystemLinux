using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using Microsoft.CSharp.RuntimeBinder.Binder.Convert;
//using Excel = Microsoft.Office.Interop.Excel;

namespace ScreenShotTest
{
	public class TilesManager
	{
		private ConfigManager configManager;
		private List<int> lines;
		private int cols;

		public TilesManager(ConfigManager configManager, int wide)
		{
			this.configManager = configManager;
			cols = cols = wide / 16;
			Tiles = new int[cols];
			ResetTiles();
			lines = new List<int>();
		}

		private void ResetTiles()
		{
			for (int idx = 0; idx < cols; idx++)
			{
				Tiles[idx] = 0;
			}
		}

		public void Initialize()
		{
			// TODO - toggle full / part by config
			//if (configManager.LoadTiles)
			Initialize1();			// structural level 
			//Initialize2();		// tweak part level
		}

		public void Initialize1()
		{
			// https://coderwall.com/p/app3ya/read-excel-file-in-c
			string path = @"MyTiles.csv";
			var delim = new char[] { ',' };

			lines.Clear();
			ResetTiles();
			var texts = System.IO.File.ReadAllLines(path);
			int rowCount = texts.Length;
			for (int row = 0; row < rowCount; row++)
			{
				var line = texts[row].Trim();
				if (0 == line.Length || line.StartsWith("//"))
				{
					continue;
				}

				var objs = line.Split(delim);
				string type = objs[0].ToString();
				string lowr =type.ToLower();
				int valu = Convert.ToInt32(objs[1]);
				//valu = 3;
				var datas = GetDatas(type, lowr, valu);
				lines.AddRange(datas);
			}

			int loops = cols;
			int lneCount = lines.Count;
			if (lneCount > cols)
			{
				var msg = String.Format("EXCESSIVE cols: Expect:{0} Actual:{1}", cols, lneCount);
				Logger.Error(msg);
			}
			else if (lneCount < cols)
			{
				loops = lneCount;
				var msg = String.Format("Actually  cols: Expect:{0} Actual:{1}", cols, loops);
				Logger.Info(msg);
			}

			for (int idx = 0; idx < loops; idx++)
			{
				Tiles[idx] = lines[idx];
			}
		}

		public void Initialize2()
		{
			string path = @"adriana.txt";
			var delim = new char[] { ',' };

			lines.Clear();
			ResetTiles();
			var texts = System.IO.File.ReadAllLines(path);
			int rowCount = texts.Length;
			int idx = 0;
			for (int row = 0; row < rowCount; row++)
			{
				var line = texts[row];
				if (line.StartsWith("//"))
				{
					continue;
				}

				var objs = line.Split(delim);
				int valu = Convert.ToInt32(objs[0]);
				Tiles[idx] = valu;
				idx++;
			}
		}

		//public void InitializeX()
		//{
		//	// https://coderwall.com/p/app3ya/read-excel-file-in-c
		//	string path = @"D:\GitHub\StevePro8\SegaMasterSystemLinux\TurtleBridge\level\15-LevelManual\ScreenShotTest\MyTiles.xls";
		//	Excel.Application xlApp = new Excel.Application();
		//	Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path);
		//	Excel._Worksheet xlWorksheet = xlWorkbook.Sheets[1];
		//	Excel.Range xlRange = xlWorksheet.UsedRange;

			//	int rowCount = xlRange.Cells.Rows.Count;
			//	int colCount = xlRange.Cells.Columns.Count;
			//	for (int row = 1; row <= rowCount; row++)
			//	{
			//		string type = xlRange.Cells[row, 1].Value2.ToString();
			//		string lowr = xlRange.Cells[row, 1].Value2.ToString().ToLower();
			//		int valu = Convert.ToInt32(xlRange.Cells[row, 2].Value2.ToString());
			//		//valu = 3;
			//		var datas = GetDatas(type, lowr, valu);
			//		lines.AddRange(datas);
			//	}

			//	for (int idx = 0; idx < lines.Count; idx++)
			//	{
			//		Tiles[idx] = lines[idx];
			//	}
			//}

		private List<int> GetDatas(string type, string lowr, int valu)
		{
			var datas = new List<int>();
			if (lowr.Contains("waves"))
			{
				return GetDatasWaves(type, lowr, valu);
			}
			if (lowr.Contains("bridge"))
			{
				return GetDatasBridge(type, lowr, valu);
			}
			if (lowr.Contains("island"))
			{
				return GetDatasIsland(type, lowr, valu);
			}
			if (lowr.Contains("turtle"))
			{
				return GetDatasTurtle(type, lowr, valu);
			}

			return datas;
		}

		private List<int> GetDatasTurtle(string type, string lowr, int valu)
		{
			var datas = new List<int>();
			int item = -0;
			if (type == "TurtleSea1")
			{
				item = 10;
			}
			if (type == "TurtleSea2")
			{
				item = 11;
			}
			if (type == "TurtleFly1")
			{
				item = 12;
			}
			if (type == "TurtleFly2")
			{
				item = 13;
			}
			if (type == "TurtleFly3")
			{
				item = 14;
			}
			if (type == "TurtleFly4")
			{
				item = 15;
			}
			for (int idx = 0; idx < valu; idx++)
			{
				datas.Add(item);
			}

			return datas;
		}

		private List<int> GetDatasWaves(string type, string lowr, int valu)
		{
			var datas = new List<int>();
			for (int idx = 0; idx < valu; idx++)
			{
				datas.Add(0);
			}

			return datas;
		}

		private List<int> GetDatasIsland(string type, string lowr, int valu)
		{
			var datas = new List<int>();
			if (type == "IslandGoal")
			{
				for (int idx = 1; idx <= 5; idx++)
				{
					datas.Add(4);
				}
				datas.Add(18);
				for (int idx = 1; idx <= 1; idx++)
				{
					datas.Add(4);
				}
				datas.Add(6);
				return datas;
			}
			if (type == "IslandSign")
			{
				for (int idx = 0; idx < valu; idx++)
				{
					datas.Add(7);
				}
				return datas;
			}
			if (type == "IslandTree")
			{
				int half = valu / 2;
				if (0 != valu %2)
				{
					Logger.Error("NOT an even number of trees: " + valu);
				}
				for (int idx =0; idx < half; idx++)
				{
					datas.Add(8);
					datas.Add(9);
				}
				return datas;
			}
			if (type == "IslandBoth" || type == "IslandLeft")
			{
				datas.Add(5);
			}
			if (type == "IslandMidd" || type == "IslandRght")
			{
				datas.Add(4);
			}
			for (int idx = 1; idx < valu - 1; idx++)
			{
				datas.Add(4);
			}
			if (type == "IslandBoth" || type == "IslandRght")
			{
				datas.Add(6);
			}
			if (type == "IslandMidd" || type == "IslandLeft")
			{
				datas.Add(4);
			}

			return datas;
		}

		private List<int> GetDatasBridge(string type, string lowr, int valu)
		{
			var datas = new List<int>();
			if (type == "BridgeGoal")
			{
				for (int idx = 1; idx <= 5; idx++)
				{
					datas.Add(1);
				}
				datas.Add(17);
				for (int idx = 1; idx <= 2; idx++)
				{
					datas.Add(1);
				}
				return datas;
			}
			if (type == "BridgeSign")
			{
				for (int idx = 0; idx < valu; idx++)
				{
					datas.Add(3);
				}
				return datas;
			}
			if (type == "BridgeBoth" || type == "BridgeLeft")
			{
				datas.Add(16);
			}
			if (type == "BridgeMidd" || (type == "BridgeRght" && valu > 1))
			{
				datas.Add(1);
			}
			for (int idx = 1; idx < valu-1; idx++)
			{
				datas.Add(1);
			}
			if (type == "BridgeBoth" || type == "BridgeRght")
			{
				datas.Add(2);
			}
			if ((type == "BridgeMidd" && valu > 1) || type == "BridgeLeft")
			{
				datas.Add(1);
			}

			return datas;
		}

		public int[] Tiles { get; private set; }
	}
}
