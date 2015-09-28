package idv.hsiehpinghan.java8example.example;

import idv.hsiehpinghan.java8example.utility.ConverterUtility;
import idv.hsiehpinghan.java8example.utility.GeneratorUtility;

import java.util.List;

import org.testng.Assert;
import org.testng.annotations.Test;

public class PredicateTest {

	@Test
	public void predicate() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		List<Integer> result = Predicate.predicate(list);
		Assert.assertEquals(ConverterUtility.convertToString(result), "1");
	}
	
}
