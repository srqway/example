package idv.hsiehpinghan.java8example.example;

import org.testng.Assert;
import org.testng.annotations.Test;

public class DefaultMethodTest {
	private DefaultMethod defaultMethod = new DefaultMethod();

	@Test
	public void singleInterface() {
		String actual = defaultMethod.singleInterface(3);
		Assert.assertEquals(actual, "3");
	}
	
	@Test
	public void multiInterface() {
		String actual = defaultMethod.multiInterface();
		Assert.assertEquals(actual, "MultiInterface0");
	}
	
	@Test
	public void staticInterface() {
		String actual = defaultMethod.staticInterface(3);
		Assert.assertEquals(actual, "3");
	}
}
