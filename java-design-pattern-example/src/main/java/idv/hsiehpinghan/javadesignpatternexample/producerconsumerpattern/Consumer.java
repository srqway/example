package idv.hsiehpinghan.javadesignpatternexample.producerconsumerpattern;

import java.util.concurrent.BlockingQueue;

public class Consumer implements Runnable {
	private final long SLEEP_SECONDS = 1;
	private BlockingQueue<Data> dataQueue;

	public Consumer(BlockingQueue<Data> dataQueue) {
		super();
		this.dataQueue = dataQueue;
	}

	@Override
	public void run() {
		while (true) {
			try {
				Data data = dataQueue.take();
				System.err.println("process data(" + data.getName() + ").");
				Thread.sleep(SLEEP_SECONDS * 1000);
			} catch (InterruptedException e) {
				throw new RuntimeException(e);
			}
		}
	}

}
