package idv.hsiehpinghan.java8example.feature;

import idv.hsiehpinghan.java8example.feature.Predicate;
import idv.hsiehpinghan.java8example.utility.GeneratorUtility;

import java.util.List;
import java.util.stream.Collectors;

import org.testng.Assert;
import org.testng.annotations.Test;

public class PredicateTest {

	@Test
	public void predicate() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		List<Integer> result = Predicate.predicate(list);
		Assert.assertEquals(result.stream().map(t -> {
			return String.valueOf(t);
		}).collect(Collectors.joining()), "1");
	}

}
