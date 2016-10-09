package idv.hsiehpinghan.java8example.ref;

import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.List;

import org.testng.Assert;
import org.testng.annotations.Test;

public class SoftReferenceTest {

	@Test
	public void softReference() {
		System.err.println("softReference test begin.");
		SoftReference<SoftReferenceObject> softRerference = new SoftReference<>(new SoftReferenceObject());
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
		System.err.println("softReference test success.");
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
