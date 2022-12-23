namespace ScreenShotTest
{
	public abstract class Output
	{
		protected AssetManager assetManager;

		public virtual void Ctor(AssetManager assetManager)
		{
			this.assetManager = assetManager;
		}

		public int High { get; protected set; }
		public int Wide { get; protected set; }
	}
}
