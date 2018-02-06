package idv.hsiehpinghan.java8example.feature;

import java.util.stream.IntStream;

import org.testng.Assert;
import org.testng.annotations.Test;

public class IntStreamTest {

	@Test
	public void range() {
		int[] intArray = IntStream.range(0, 3).toArray();
		Assert.assertEquals(intArray, new int[] { 0, 1, 2 });
	}

}
