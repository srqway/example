package idv.hsiehpinghan.java8example.feature;

public class TryWithResources implements AutoCloseable {

	@Override
	public void close() throws Exception {
		System.err.println("TryWithResources close().");
	}

}
