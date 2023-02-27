namespace AudioDump
{
	public struct FileObject
	{
		public string Name { get; private set; }
		public int Bank { get; private set; }
		public int Size { get; private set; }

		public FileObject(string name, int bank, int size)
		{
			Name = name;
			Bank = bank;
			Size = size;
		}
	}
}
