package idv.hsiehpinghan.javadesignpatternexample.futurepattern.callable;

import java.util.concurrent.Callable;

public class RealData implements Callable<String> {
	private final long SLEEP_SECONDS = 3;

	@Override
	public String call() throws Exception {
		Thread.sleep(SLEEP_SECONDS * 1000);
		return "real data";
	}

}
