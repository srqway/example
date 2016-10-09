package idv.hsiehpinghan.javadesignpatternexample.futurepattern.callable;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

import org.testng.annotations.Test;

public class RealDataTest {
	private final long SLEEP_SECONDS = 1;

	@Test
	public void call() throws InterruptedException {
		FutureTask<String> futureTask = new FutureTask<>(new RealData());
		ExecutorService executorService = Executors.newFixedThreadPool(1);
		executorService.submit(futureTask);
		while (futureTask.isDone() == false) {
			System.err.println("futureTask not done yet...");
			Thread.sleep(SLEEP_SECONDS * 1000);
		}
		System.err.println("futureTask done.");
	}
}
