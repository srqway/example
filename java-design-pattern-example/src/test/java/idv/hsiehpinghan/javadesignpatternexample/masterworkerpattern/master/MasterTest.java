package idv.hsiehpinghan.javadesignpatternexample.masterworkerpattern.master;

import java.util.Queue;

import org.testng.annotations.Test;

public class MasterTest {
	private final long SLEEP_SECONDS = 1;
	private final int WORKER_AMOUNT = 3;

	@Test
	public void execute() throws Exception {
		Master master = new Master(WORKER_AMOUNT);
		for (int i = 0; i < 100; ++i) {
			master.addWork(i);
		}
		master.execute();
		int result = 0;
		while ((master.isComplete() == false) || (master.getResultQueue().isEmpty() == false)) {
			Queue<Integer> resultQueue = master.getResultQueue();
			while (resultQueue.isEmpty() == false) {
				Integer r = resultQueue.poll();
				if (r != null) {
					result += r;
				}
			}
			System.err.println("subtotal : " + result);
			Thread.sleep(SLEEP_SECONDS * 1000);
		}
		System.err.println("total : " + result);
	}
}
