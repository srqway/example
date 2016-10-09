package idv.hsiehpinghan.java8example.ref;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.testng.annotations.Test;

public class PhantomReferenceQueueTest {

	@Test
	public void phantomReferenceQueue() {
		System.err.println("phantomReferenceQueue test begin.");
		ReferenceQueue<PhantomReferenceObject> referenceQueue = new ReferenceQueue<>();
		PhantomReference<PhantomReferenceObject> phantomRerference = new PhantomReference<>(
				new PhantomReferenceObject(), referenceQueue);
		Map<PhantomReference<PhantomReferenceObject>, String> map = new HashMap<>();
		map.put(phantomRerference, "PhantomReferenceObject's resource");
		Thread cleaner = startReferenceQueueResourceCleaner(referenceQueue, map);
		List<byte[]> list = new ArrayList<>();
		while (true) {
			if (cleaner.isAlive() == false) {
				break;
			}
			byte[] bytes = new byte[128 * 1024 * 1024];
			list.add(bytes);
			System.gc();
		}
		System.err.println("phantomReferenceQueue test success.");
	}

	private Thread startReferenceQueueResourceCleaner(ReferenceQueue<PhantomReferenceObject> referenceQueue,
			Map<PhantomReference<PhantomReferenceObject>, String> map) {
		ReferenceQueueResourceCleaner cleaner = new ReferenceQueueResourceCleaner(referenceQueue, map);
		cleaner.setDaemon(true);
		cleaner.start();
		return cleaner;
	}

	private class ReferenceQueueResourceCleaner extends Thread {
		private ReferenceQueue<PhantomReferenceObject> referenceQueue;
		private Map<PhantomReference<PhantomReferenceObject>, String> map;

		public ReferenceQueueResourceCleaner(ReferenceQueue<PhantomReferenceObject> referenceQueue,
				Map<PhantomReference<PhantomReferenceObject>, String> map) {
			this.referenceQueue = referenceQueue;
			this.map = map;
		}

		@Override
		public void run() {
			try {
				Reference<? extends PhantomReferenceObject> reference = referenceQueue.remove();
				System.err.println("referenceQueue got reference(" + reference + ").");
				String resource = map.get(reference);
				System.err.println("do " + resource + ") cleaning job.");
			} catch (InterruptedException e) {
				throw new RuntimeException(e);
			}
		}
	}

	private class PhantomReferenceObject {
		@SuppressWarnings("unused")
		private byte[] bytes = new byte[1024 * 1024 * 1024];

		@Override
		protected void finalize() throws Throwable {
			super.finalize();
			System.err.println(this.getClass() + " finalize !!!");
		}
	}

}
