package idv.hsiehpinghan.java8example.example;

import idv.hsiehpinghan.java8example.utility.GeneratorUtility;

import java.util.List;

import org.testng.Assert;
import org.testng.annotations.Test;

public class ConstructorReferenceTest {

	@Test
	public void convertToConstructorReferences() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		List<ConstructorReference> result = ConstructorReference
				.convertToConstructorReferences(list);
		for (int i = 0, size = result.size(); i < size; ++i) {
			ConstructorReference ele = result.get(i);
			Assert.assertTrue(ele.getI().compareTo(i) == 0);
		}
	}
}
