package idv.hsiehpinghan.java8example.ref;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

import org.testng.Assert;
import org.testng.annotations.Test;

public class WeakReferenceQueueTest {

	@Test
	public void weakReferenceQueue() {
		System.err.println("weakReferenceQueue test begin.");
		ReferenceQueue<WeakReferenceObject> referenceQueue = new ReferenceQueue<>();
		WeakReference<WeakReferenceObject> weakRerference = new WeakReference<>(new WeakReferenceObject(),
				referenceQueue);
		startReferenceQueueChecker(referenceQueue);
		Assert.assertNotNull(weakRerference.get());
		System.gc();
		Assert.assertNull(weakRerference.get());
		System.err.println("weakReferenceQueue test success.");
	}

	private void startReferenceQueueChecker(ReferenceQueue<WeakReferenceObject> referenceQueue) {
		ReferenceQueueChecker checker = new ReferenceQueueChecker(referenceQueue);
		checker.setDaemon(true);
		checker.start();
	}

	private class ReferenceQueueChecker extends Thread {
		private ReferenceQueue<WeakReferenceObject> referenceQueue;

		public ReferenceQueueChecker(ReferenceQueue<WeakReferenceObject> referenceQueue) {
			this.referenceQueue = referenceQueue;
		}

		@Override
		public void run() {
			try {
				Reference<? extends WeakReferenceObject> reference = referenceQueue.remove();
				System.err.println("referenceQueue got reference(" + reference + ").");
			} catch (InterruptedException e) {
				throw new RuntimeException(e);
			}
		}
	}

	private class WeakReferenceObject {
		@SuppressWarnings("unused")
		private byte[] bytes = new byte[1024 * 1024 * 1024];

		@Override
		protected void finalize() throws Throwable {
			super.finalize();
			System.err.println(this.getClass() + " finalize !!!");
		}
	}

}
