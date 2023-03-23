using System;

namespace ExtractCheckpoints
{
	public class ConvertManager
	{
		public static string ConvertOt(string input)
		{
			string output = String.Empty;
			var temp = input.Split(new char[] { ',' });
			if (temp.Length != 2)
			{
				throw new Exception("input malformed " + input);
			}

			var left = temp[0];
			var rght = temp[1];
			output = left;
			if ("BridgeLeft" == left)
			{
				output = "BridgeRght";
			}
			if ("IslandLeft" == left)
			{
				output = "IslandRght";
			}

			output += "," + rght;
			return output;
		}

		public static string ConvertIn(string input)
		{
			string output = String.Empty;
			var temp = input.Split(new char[] { ',' });
			if (temp.Length != 2)
			{
				throw new Exception("input malformed " + input);
			}

			var left = temp[0];
			var rght = temp[1];
			output = left;
			if ("WB" == left)
			{
				output = "WavesBlock";
			}

			if ("BL" == left)
			{
				output = "BridgeLeft";
			}
			if ("BM" == left)
			{
				output = "BridgeMidd";
			}

			if ("IL" == left)
			{
				output = "IslandLeft";
			}
			if ("IM" == left)
			{
				output = "IslandMidd";
			}
			if ("IT" == left)
			{
				output = "IslandTree";
			}
			
			if ("S1" == left)
			{
				output = "TurtleSea1";
			}
			if ("S2" == left)
			{
				output = "TurtleSea2";
			}

			if ("F1" == left)
			{
				output = "TurtleFly1";
			}
			if ("F2" == left)
			{
				output = "TurtleFly2";
			}
			if ("F3" == left)
			{
				output = "TurtleFly3";
			}
			if ("F4" == left)
			{
				output = "TurtleFly4";
			}
			if ("F1" == left)
			{
				output = "TurtleFly1";
			}

			output += "," + rght;
			return output;
		}
	}
}
