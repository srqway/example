package idv.hsiehpinghan.java8example.feature;

import idv.hsiehpinghan.java8example.feature.MethodReference;
import idv.hsiehpinghan.java8example.utility.GeneratorUtility;

import java.util.List;

import org.testng.Assert;
import org.testng.annotations.Test;

public class MethodReferenceTest {
	private MethodReference methodReference = new MethodReference();

	@Test
	public void convertToString() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Assert.assertEquals(methodReference.convertToString(list), "012");

	}

}
