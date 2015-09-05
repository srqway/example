package idv.hsiehpinghan.java8example.example;

import java.util.ArrayList;
import java.util.List;

import org.testng.Assert;
import org.testng.annotations.Test;

public class MethodReferenceTest {
	private MethodReference methodReference = new MethodReference();

	@Test
	public void convertToString() {
		List<Integer> list = generateList();
		Assert.assertEquals(methodReference.convertToString(list), "012");

	}

	private List<Integer> generateList() {
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < 3; ++i) {
			list.add(i);
		}
		return list;
	}
}
