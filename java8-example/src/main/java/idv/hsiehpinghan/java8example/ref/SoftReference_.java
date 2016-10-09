package idv.hsiehpinghan.java8example.ref;

import java.lang.ref.SoftReference;

public class SoftReference_<T> {
	private SoftReference<T> softRerference;

	public SoftReference_(T object) {
		softRerference = new SoftReference<T>(object);

	}

	public T get() {
		return softRerference.get();
	}
}
