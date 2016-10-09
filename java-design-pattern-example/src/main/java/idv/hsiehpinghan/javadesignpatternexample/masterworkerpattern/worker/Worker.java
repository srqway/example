package idv.hsiehpinghan.javadesignpatternexample.masterworkerpattern.worker;

import java.util.Queue;

public abstract class Worker implements Runnable {
	private final long SLEEP_SECONDS = 1;
	protected Queue<Integer> workQueue;
	protected Queue<Integer> resultQueue;

	public Worker(Queue<Integer> workQueue, Queue<Integer> resultQueue) {
		this.workQueue = workQueue;
		this.resultQueue = resultQueue;
	}

	@Override
	public void run() {
		while (true) {
			Integer input = workQueue.poll();
			if (input == null) {
				try {
					Thread.sleep(SLEEP_SECONDS * 1000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				continue;
			}
			Integer result = process(input);
			resultQueue.add(result);
		}
	}

	protected abstract Integer process(Integer input);
}
