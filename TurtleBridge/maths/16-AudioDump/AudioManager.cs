using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace AudioDump
{
	public class AudioManager
	{
		private const int SIXTEEN = 16 * 1024;

		public AudioManager()
		{
			Lines = new List<string>();
			Names = new List<string>();
			Datas = new List<int>();
		}

		public void Calculate(List<FileObject> fileObjs)
		{
			var fileWips = new List<FileObject>();
			int count = fileObjs.Count;
			//int index = 0;
			for (int outer = 0; outer < count; outer++)
			{
				fileWips.Clear();
				Datas.Clear();
				var objOuter = fileObjs[outer];
				fileWips.Add(objOuter);
				Datas.Add(outer);
				int maxim = objOuter.Size;
				Names.Add(objOuter.Name);
				for (int inner = 0; inner < count; inner++)
				{
					if (inner == outer)
					{
						continue;
					}

					var objInner = fileObjs[inner];
					if (Names.Contains(objInner.Name))
					{
						continue;
					}
					int value = maxim + objInner.Size;
					if (value < SIXTEEN)
					{
						if (value > maxim)
						{
							fileWips.Add(objInner);
							Datas.Add(inner);
							maxim = value;
						}
					}
				}

				// Chance for banking...
				if (fileWips.Count() > 1)
				{
					//if (!Datas.Contains(maxim))
					//{

					//index++;
					Lines.Add((outer + 1).ToString().PadLeft(2, '0') + "," + objOuter.Name + "[" + fileWips.Count() + "]");
					//foreach (var obj in fileWips)
					for (int idx = 0; idx < fileWips.Count(); idx++)
					{
						var obj = fileWips[idx];
						var dat = Datas[idx];
						Names.Add(obj.Name);
						string line = String.Format("{0},{1},{2},{3},{4}",
							(dat + 1).ToString().PadLeft(2, '0'),
						obj.Proj,
						obj.Bank,
						obj.Name,
						obj.Size);
						Lines.Add(line);
					}
					Lines.Add("TOTAL," + maxim);
					Lines.Add("");
					//}
					//else
					//{
					//	Console.WriteLine("bobo");
					//}
				}
			}

			var fileName = "audioTotals.csv";
			var contents = Lines.ToArray();
			File.WriteAllLines(fileName, contents);
		}

		public List<string> Lines { get; private set; }
		public List<string> Names { get; private set; }
		public List<int> Datas { get; private set; }
	}
}
