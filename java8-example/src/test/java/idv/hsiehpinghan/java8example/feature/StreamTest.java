package idv.hsiehpinghan.java8example.feature;

import idv.hsiehpinghan.java8example.feature.Stream;
import idv.hsiehpinghan.java8example.utility.GeneratorUtility;

import java.util.List;
import java.util.Map;

import org.testng.Assert;
import org.testng.annotations.Test;

public class StreamTest {
	private Stream stream = new Stream();

	@Test
	public void forEach() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Assert.assertEquals(stream.forEach(list), "012");
	}

	@Test
	public void map() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Assert.assertEquals(stream.map(list), "123");
	}

	@Test
	public void reduce() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Assert.assertTrue(stream.reduce(list).compareTo(3) == 0);
	}

	@Test
	public void filter() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Assert.assertEquals(stream.filter(list), "12");
	}

	@Test
	public void limit() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Assert.assertEquals(stream.limit(list), "01");
	}

	@Test
	public void sorted() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Assert.assertEquals(stream.sorted(list), "012");
	}

	@Test
	public void parallelStream() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Assert.assertEquals(stream.parallelStream(list), "12");
	}

	@Test
	public void toArray() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Assert.assertEquals(stream.toArray(list),
				new String[] { "0", "1", "2" });
	}

	@Test
	public void listToMap() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Map<Integer, Integer> map = stream.listToMap(list);
		Assert.assertEquals(map.size(), 3);
		map.forEach((k, v) -> {
			Assert.assertEquals(k.compareTo(v), 0);
		});
	}

}