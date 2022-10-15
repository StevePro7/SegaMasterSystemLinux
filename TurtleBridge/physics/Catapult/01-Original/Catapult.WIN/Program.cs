namespace CatapultMiniGame
{
	static class Program
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		static void Main()
		{
			using (CatapultGame game = new CatapultGame())
			{
				game.Run();
			}
		}
	}
}
