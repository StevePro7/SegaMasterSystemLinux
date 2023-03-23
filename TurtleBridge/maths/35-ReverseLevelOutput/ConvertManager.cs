using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExtractCheckpoints
{
	public class ConvertManager
	{
		public string  Convert(string input)
		{
			string output = String.Empty;
			var temp = input.Split(new char[] { ',' });
			if (temp.Length != 2)
			{
				throw new Exception("input malformed " + input);
			}

			var left = temp[0];
			var rght = temp[1];

			if ("WB" == left)
			{
				output = "WavesBlock";
			}

			if ("BM" == left)
			{
				output = "BridgeMidd";
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


