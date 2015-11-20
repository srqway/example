package idv.hsiehpinghan.java8example.feature;

import idv.hsiehpinghan.java8example.feature.FunctionalInterface;

import org.testng.Assert;
import org.testng.annotations.Test;

public class FunctionalInterfaceTest {
	private FunctionalInterface functionalInterface = new FunctionalInterface();

	@Test
	public void predicate() {
		boolean condition = functionalInterface.predicate(1, t -> {
			return t > 0;
		});
		Assert.assertTrue(condition);
	}
}
