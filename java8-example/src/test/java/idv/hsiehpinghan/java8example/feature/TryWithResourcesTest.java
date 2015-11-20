package idv.hsiehpinghan.java8example.feature;

import idv.hsiehpinghan.java8example.feature.TryWithResources;

import org.testng.annotations.Test;

public class TryWithResourcesTest {

	@Test
	public void close() {
		try (TryWithResources tryWithResources1 = new TryWithResources();
				TryWithResources tryWithResources2 = new TryWithResources()) {
			System.err.println("do something.");
		} catch (Exception e) {
			System.err.println("Exception !!!");
		}
	}
}
