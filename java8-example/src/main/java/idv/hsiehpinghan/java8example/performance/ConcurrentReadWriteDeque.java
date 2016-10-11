package idv.hsiehpinghan.java8example.performance;

import java.util.concurrent.LinkedBlockingDeque;

public class ConcurrentReadWriteDeque {

	public void bestPerformance(LinkedBlockingDeque<String> linkedBlockingDeque, String string) {
		linkedBlockingDeque.add(string);
	}

}
