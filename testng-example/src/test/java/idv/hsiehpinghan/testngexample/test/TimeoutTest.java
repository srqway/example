package idv.hsiehpinghan.testngexample.test;

import org.testng.annotations.Test;

public class TimeoutTest {

	@Test(timeOut = 5000)
	public void timeOut4000() throws InterruptedException {
		Thread.sleep(4000);
	}

	@Test(timeOut = 1000)
	public void whileTrue() {
		while (true)
			;
	}
}
