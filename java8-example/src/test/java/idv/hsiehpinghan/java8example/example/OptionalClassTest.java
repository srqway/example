package idv.hsiehpinghan.java8example.example;

import java.util.ArrayList;
import java.util.List;

import org.testng.Assert;
import org.testng.annotations.Test;

public class OptionalClassTest {
	private OptionalClass optionalClass = new OptionalClass();

	@Test
	public void sum() {
		List<Integer> list = generateList();
		Integer actual = optionalClass.sum(list);
		Assert.assertEquals(actual, Integer.valueOf(3));
	}

	private List<Integer> generateList() {
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < 3; ++i) {
			list.add(i);
		}
		return list;
	}
}
