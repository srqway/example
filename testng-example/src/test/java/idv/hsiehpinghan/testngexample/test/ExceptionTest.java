package idv.hsiehpinghan.testngexample.test;

import org.testng.annotations.Test;

public class ExceptionTest {

	@Test(expectedExceptions = ArithmeticException.class)
	public void runtimeException() {
		System.out.println("@Test runtimeException");
		@SuppressWarnings("unused")
		int i = 1 / 0;
	}

	@Test(expectedExceptions = { Exception.class })
	public void exception() throws Exception {
		System.out.println("@Test exception");
		if (true) {
			throw new Exception("my exception");
		}
	}
}
