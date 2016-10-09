package idv.hsiehpinghan.javadesignpatternexample.producerconsumerpattern;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

import org.testng.annotations.Test;

public class ProducerConsumerTest {
	private final long SLEEP_SECONDS = 5;
	private final int QUEUE_SIZE = 3;

	@Test
	public void run() throws InterruptedException {
		BlockingQueue<Data> dataQueue = new LinkedBlockingQueue<>(QUEUE_SIZE);
		Producer producer = new Producer(dataQueue);
		Consumer consumer = new Consumer(dataQueue);
		ExecutorService executorService = Executors.newCachedThreadPool();
		executorService.execute(producer);
		executorService.execute(consumer);
		Thread.sleep(SLEEP_SECONDS * 1000);
	}
}
