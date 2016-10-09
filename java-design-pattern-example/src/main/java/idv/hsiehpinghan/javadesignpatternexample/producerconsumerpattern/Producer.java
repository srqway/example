package idv.hsiehpinghan.javadesignpatternexample.producerconsumerpattern;

import java.util.Random;
import java.util.concurrent.BlockingQueue;

public class Producer implements Runnable {
	private final Random random = new Random();
	private BlockingQueue<Data> dataQueue;

	public Producer(BlockingQueue<Data> dataQueue) {
		super();
		this.dataQueue = dataQueue;
	}

	@Override
	public void run() {
		while (true) {
			Data data = new Data("data_" + random.nextLong());
			try {
				dataQueue.put(data);
			} catch (InterruptedException e) {
				throw new RuntimeException(e);
			}
		}
	}

}
