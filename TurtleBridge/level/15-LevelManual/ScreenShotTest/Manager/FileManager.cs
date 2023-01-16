using System.Collections.Generic;
using System.IO;

namespace ScreenShotTest
{
	public class FileManager
	{
		public FileManager()
		{
			Objects = new List<string>();
			Objects.Clear();
		}

		public void Initialize()
		{
			var delim = new char[] { ',' };
			var lines = File.ReadAllLines("level.csv");
			foreach (var line in lines)
			{
				var objs = line.Split(delim);
				foreach(var obj in objs)
				{
					if (0 == obj.Length)
					{
					}
					else
					{
						var let = obj.ToUpper();
						char ch = let.ToCharArray()[0];
						//if (ch >= 'A' && ch <= 'Q')
						//{
							Objects.Add(let);
						//}
					}
				}
			}

			int len = Objects.Count;
		}

		public IList<string> Objects { get; private set; }
	}
}
