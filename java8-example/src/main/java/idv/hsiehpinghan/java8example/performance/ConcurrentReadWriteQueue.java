package idv.hsiehpinghan.java8example.performance;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class ConcurrentReadWriteQueue {

	public void bestPerformance(ConcurrentLinkedQueue<String> queue, String string) {
		queue.add(string);
	}

	public void worstPerformance(BlockingQueue<String> queue, String string) {
		queue.add(string);
	}
}
