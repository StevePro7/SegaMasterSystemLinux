using System;
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
			var bob = Tiles.Length;
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
