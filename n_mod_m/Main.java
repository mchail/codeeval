import java.io.File;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.FileReader;

public class Main {
	public static void main (String[] args) {
		try {
			File file = new File(args[0]);
			BufferedReader in = new BufferedReader(new FileReader(file));
			String line;
			while ((line = in.readLine()) != null) {
				String[] nums = line.split(",");
				int n = Integer.parseInt(nums[0]);
				int m = Integer.parseInt(nums[1]);
				int mod = n - ((n / m) * m);
				System.out.println(mod);
			}
		} catch (IOException e) {
			System.out.println("File Read Error: " + e.getMessage());
		}               
	}
}

