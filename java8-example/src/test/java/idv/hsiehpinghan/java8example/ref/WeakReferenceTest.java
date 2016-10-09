package idv.hsiehpinghan.java8example.ref;

import java.lang.ref.WeakReference;

import org.testng.Assert;
import org.testng.annotations.Test;

public class WeakReferenceTest {

	@Test
	public void weakReference() {
		System.err.println("weakReference test begin.");
		WeakReference<WeakReferenceObject> weakRerference = new WeakReference<>(new WeakReferenceObject());
		Assert.assertNotNull(weakRerference.get());
		System.gc();
		Assert.assertNull(weakRerference.get());
		System.err.println("weakReference test success.");
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
