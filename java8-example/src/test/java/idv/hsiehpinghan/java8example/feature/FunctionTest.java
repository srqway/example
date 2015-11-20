package idv.hsiehpinghan.java8example.feature;

import idv.hsiehpinghan.java8example.feature.Function;
import idv.hsiehpinghan.java8example.utility.GeneratorUtility;

import java.util.List;

import org.testng.Assert;
import org.testng.annotations.Test;

public class FunctionTest {

	@Test
	public void function() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		List<String> result = Function.function(list);
		for (int i = 0, size = list.size(); i < size; ++i) {
			Assert.assertTrue(result.get(i).compareTo(String.valueOf(i)) == 0);
		}
	}
}
