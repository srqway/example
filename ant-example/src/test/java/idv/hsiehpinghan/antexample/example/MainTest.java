package idv.hsiehpinghan.antexample.example;

import org.testng.Assert;
import org.testng.annotations.Test;

public class MainTest {

	@Test
	public void getMessage() {
		String message = Main.getMessage();
		Assert.assertEquals("ant example.", message);
	}
}
