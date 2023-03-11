﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using Microsoft.CSharp.RuntimeBinder.Binder.Convert;
using Excel = Microsoft.Office.Interop.Excel;

namespace ScreenShotTest
{
	public class TilesManager
	{
		private List<int> lines;

		public TilesManager(int wide)
		{
			int cols = cols = wide / 16;
			Tiles = new int[cols];
			for (int idx = 0; idx < cols; idx++)
			{
				Tiles[idx] = 0;
			}
			lines = new List<int>();
		}

		public void Initialize()
		{
			// https://coderwall.com/p/app3ya/read-excel-file-in-c
			string path = @"MyTiles.csv";
			var delim = new char[] { ',' };

			var texts = System.IO.File.ReadAllLines(path);
			int rowCount = texts.Length;
			for (int row = 0; row < rowCount; row++)
			{
				var line = texts[row];
				var objs = line.Split(delim);

				string type = objs[0].ToString();
				string lowr =type.ToLower();
				int valu = Convert.ToInt32(objs[1]);
				//valu = 3;
				var datas = GetDatas(type, lowr, valu);
				lines.AddRange(datas);
			}

			for (int idx = 0; idx < lines.Count; idx++)
			{
				Tiles[idx] = lines[idx];
			}
		}

		public void InitializeX()
		{
			// https://coderwall.com/p/app3ya/read-excel-file-in-c
			string path = @"D:\GitHub\StevePro8\SegaMasterSystemLinux\TurtleBridge\level\15-LevelManual\ScreenShotTest\MyTiles.xls";
			Excel.Application xlApp = new Excel.Application();
			Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(path);
			Excel._Worksheet xlWorksheet = xlWorkbook.Sheets[1];
			Excel.Range xlRange = xlWorksheet.UsedRange;

			int rowCount = xlRange.Cells.Rows.Count;
			int colCount = xlRange.Cells.Columns.Count;
			for (int row = 1; row <= rowCount; row++)
			{
				string type = xlRange.Cells[row, 1].Value2.ToString();
				string lowr = xlRange.Cells[row, 1].Value2.ToString().ToLower();
				int valu = Convert.ToInt32(xlRange.Cells[row, 2].Value2.ToString());
				//valu = 3;
				var datas = GetDatas(type, lowr, valu);
				lines.AddRange(datas);
			}

			for (int idx = 0; idx < lines.Count; idx++)
			{
				Tiles[idx] = lines[idx];
			}
		}

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
			if (type == "BridgeBoth" || type == "BridgeLeft")
			{
				datas.Add(16);
			}
			if (type == "BridgeMidd" || type == "BridgeRght")
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
			if (type == "BridgeMidd" || type == "BridgeLeft")
			{
				datas.Add(1);
			}

			return datas;
		}

		public int[] Tiles { get; private set; }
	}
}
