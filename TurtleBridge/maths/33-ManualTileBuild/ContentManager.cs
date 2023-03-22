using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ConsoidateFiles
{
	public class ContentManager
	{
		public void Initialize()
		{
			Files = new Dictionary<string, List<string>>();
			Files.Clear();

			var files = Directory.GetFiles("files/");
			foreach (var file in files)
			{
				var name = file.Replace("files/", String.Empty);
				var key = name.Replace(".csv", String.Empty);
				var val = File.ReadAllLines("files/" + name).ToList();
				Files.Add(key, val);
			}
		}

		public static Dictionary<string, List<string>> Files { get; private set; }
	}
}
