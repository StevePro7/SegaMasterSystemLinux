namespace AudioDump
{
	public struct FileObject
	{
		public string Proj { get; private set; }
		public string Name { get; private set; }
		public int Bank { get; private set; }
		public int Size { get; private set; }

		public FileObject(string proj, string name, int bank, int size)
		{
			Proj = proj;
			Name = name;
			Bank = bank;
			Size = size;
		}
	}
}
