namespace AudioDump
{
	public struct FileObject
	{
		public string Name { get; private set; }
		public string Bank { get; private set; }
		public string Size { get; private set; }

		public FileObject(string name, string bank, string size)
		{
			Name = name;
			Bank = bank;
			Size = size;
		}
	}
}
