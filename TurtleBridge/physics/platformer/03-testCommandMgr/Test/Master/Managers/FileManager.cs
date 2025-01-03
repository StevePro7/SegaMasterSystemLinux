﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Xml.Linq;
using System.Xml.Serialization;

namespace WindowsGame.Master
{
	public class FileManager : IFileManager
	{
		private readonly IFileProxy fileProxy;

		public FileManager(IFileProxy fileProxy)
		{
			this.fileProxy = fileProxy;
		}

		// Warning CA2202
		public IList<String> LoadTxt(String file)
		{
			IList<String> lines = new List<String>();
			Stream stream = null;
			try
			{
				using (stream = fileProxy.GetStream(file))
				{
					using (StreamReader reader = new StreamReader(stream))
					{
						String line = reader.ReadLine();
						while (line != null)
						{
							lines.Add(line);
							line = reader.ReadLine();
						}
					}
				}

				stream = null;
			}
			finally
			{
				if (stream != null)
				{
					stream.Dispose();
				}
			}

			return lines;
		}

		public T LoadXml<T>(String file)
		{
			T data;
			using (Stream stream = fileProxy.GetStream(file))
			{
				XmlSerializer serializer = new XmlSerializer(typeof(T));
				data = (T)serializer.Deserialize(stream);
			}

			return data;
		}

		public XElement LoadXElement(String file)
		{
			XElement root;
			using (Stream stream = fileProxy.GetStream(file))
			{
				XDocument document = XDocument.Load(stream);
				root = document.Root;
			}

			return root;
		}
	}
}