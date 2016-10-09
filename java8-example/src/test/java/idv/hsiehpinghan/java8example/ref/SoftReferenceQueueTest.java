package idv.hsiehpinghan.java8example.ref;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.List;

import org.testng.Assert;
import org.testng.annotations.Test;

public class SoftReferenceQueueTest {

	@Test
	public void softReferenceQueue() {
		System.err.println("softReferenceQueue test begin.");
		ReferenceQueue<SoftReferenceObject> referenceQueue = new ReferenceQueue<>();
		SoftReference<SoftReferenceObject> softRerference = new SoftReference<>(new SoftReferenceObject(),
				referenceQueue);
		startReferenceQueueChecker(referenceQueue);
		System.gc();
		Assert.assertNotNull(softRerference.get());
		List<byte[]> list = new ArrayList<>();
		while (true) {
			if (softRerference.get() == null) {
				break;
			}
			byte[] bytes = new byte[128 * 1024 * 1024];
			list.add(bytes);
			System.gc();
		}
		System.err.println("softReferenceQueue test success.");
	}

	private void startReferenceQueueChecker(ReferenceQueue<SoftReferenceObject> referenceQueue) {
		ReferenceQueueChecker checker = new ReferenceQueueChecker(referenceQueue);
		checker.setDaemon(true);
		checker.start();
	}

	private class ReferenceQueueChecker extends Thread {
		private ReferenceQueue<SoftReferenceObject> referenceQueue;

		public ReferenceQueueChecker(ReferenceQueue<SoftReferenceObject> referenceQueue) {
			this.referenceQueue = referenceQueue;
		}

		@Override
		public void run() {
			try {
				Reference<? extends SoftReferenceObject> reference = referenceQueue.remove();
				System.err.println("referenceQueue got reference(" + reference + ").");
			} catch (InterruptedException e) {
				throw new RuntimeException(e);
			}
		}
	}

	private class SoftReferenceObject {
		@SuppressWarnings("unused")
		private byte[] bytes = new byte[1024 * 1024 * 1024];

		@Override
		protected void finalize() throws Throwable {
			super.finalize();
			System.err.println(this.getClass() + " finalize !!!");
		}
	}

}
