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

		public TilesManager()
		{
			int cols = 16;
			Tiles = new int[cols];
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
			int tileStart = 0;
			for (int row = 1; row <= rowCount; row++)
			{
				var type = xlRange.Cells[row, 1].Value2.ToString();
				var valu = Convert.ToInt32(xlRange.Cells[row, 2].Value2.ToString());

			}
		}

		public int[] Tiles { get; private set; }
	}
}
