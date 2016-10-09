package idv.hsiehpinghan.javadesignpatternexample.guardedsuspensionpattern;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class RequestQueue {
	private Queue<Request> requestQueue = new ConcurrentLinkedQueue<>();

	public synchronized Request getRequest() {
		while (requestQueue.size() <= 0) {
			try {
				wait();
			} catch (InterruptedException e) {
				throw new RuntimeException(e);
			}
		}
		return requestQueue.poll();
	}

	public synchronized void addRequest(Request request) {
		requestQueue.add(request);
		notifyAll();

	}

}
