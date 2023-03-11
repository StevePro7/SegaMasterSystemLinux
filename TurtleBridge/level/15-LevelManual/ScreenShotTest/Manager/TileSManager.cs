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
		public TilesManager()
		{
			int cols = 16;
			Tiles = new int[cols];
		}

		public void Initialize()
		{
			Excel.Application xlApp = new Excel.Application();
			Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(@"D:\GitHub\StevePro8\SegaMasterSystemLinux\TurtleBridge\level\15-LevelManual\ScreenShotTest\bin\Windows\x86\Debug\MyTiles.xls");
			Excel._Worksheet xlWorksheet = xlWorkbook.Sheets[1];
			Excel.Range xlRange = xlWorksheet.UsedRange;

			int rowCount = 3;
			int colCount = 2;
			for (int i = 1; i <= rowCount; i++)
			{
				for (int j = 1; j <= colCount; j++)
				{
					//new line
					//if (j == 1)
					//	Console.Write("\r\n");

					//write the value to the console
					if (xlRange.Cells[i, j] != null && xlRange.Cells[i, j].Value2 != null)
					{
						string text = xlRange.Cells[i, j].Value2.ToString();
						Console.Write(xlRange.Cells[i, j].Value2.ToString() + "\t");
					}
						

					//add useful things here!   
				}
			}
		}

		public int[] Tiles { get; private set; }
	}
}
