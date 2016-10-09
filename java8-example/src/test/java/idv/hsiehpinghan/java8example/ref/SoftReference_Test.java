package idv.hsiehpinghan.java8example.ref;

import java.lang.ref.SoftReference;

import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class SoftReference_Test {

	@Test
	public void get() {
		Object object = new SoftReferenceObject();
		SoftReference<Object> softRerference = new SoftReference<>(object);
		System.gc();
		Assert.assertNotNull(softRerference.get());
		object = null;
		@SuppressWarnings("unused")
		byte[] bytes = new byte[4 * 1024 * 1024];
		System.gc();
		Assert.assertNull(softRerference.get());
	}
	
	private class SoftReferenceObject {
		@SuppressWarnings("unused")
		private byte[] bytes = new byte[637 * 1024 * 1024];
	}
}
