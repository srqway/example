package idv.hsiehpinghan.java8example.feature;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TreeSet;

import org.testng.Assert;
import org.testng.annotations.Test;

import idv.hsiehpinghan.java8example.utility.GeneratorUtility;

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
		Assert.assertEquals(stream.toArray(list), new String[] { "0", "1", "2" });
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

	@Test
	public void flatMap() {
		List<Integer> list_0 = GeneratorUtility.generateIntegerList();
		List<Integer> list_1 = GeneratorUtility.generateIntegerList();
		List<Integer> list = stream.flatMap(list_0, list_1);
		Assert.assertEquals(list, Arrays.asList(0, 1, 2, 0, 1, 2));
	}

	@Test
	public void toCollection() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Collection<Integer> result = stream.toCollection(list);
		Assert.assertTrue(result instanceof TreeSet);
	}

	@Test
	public void minBy() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Optional<Integer> result = stream.minBy(list);
		Assert.assertEquals(result.get().intValue(), 0);
	}

	@Test
	public void averagingInt() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Double result = stream.averagingInt(list);
		Assert.assertEquals(result.toString(), "1.0");
	}

	@Test
	public void partitioningBy() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Map<Boolean, List<Integer>> result = stream.partitioningBy(list);
		Assert.assertEquals(result.get(Boolean.TRUE), Arrays.asList(0, 2));
		Assert.assertEquals(result.get(Boolean.FALSE), Arrays.asList(1));
	}

	@Test
	public void groupingBy() {
		List<String> list = Arrays.asList("a0", "b0", "c0", "a1", "b1");
		Map<Character, List<String>> result = stream.groupingBy(list);
		Assert.assertEquals(result.get('a'), Arrays.asList("a0", "a1"));
		Assert.assertEquals(result.get('b'), Arrays.asList("b0", "b1"));
		Assert.assertEquals(result.get('c'), Arrays.asList("c0"));
	}

	@Test
	public void groupingByWithCounting() {
		List<String> list = Arrays.asList("a0", "b0", "c0", "a1", "b1");
		Map<Character, Long> result = stream.groupingByWithCounting(list);
		Assert.assertEquals(result.get('a').longValue(), 2);
		Assert.assertEquals(result.get('b').longValue(), 2);
		Assert.assertEquals(result.get('c').longValue(), 1);
	}

	@Test
	public void groupingByWithMapping() {
		List<String> list = Arrays.asList("a0", "b0", "c0", "a1", "b1");
		Map<Character, List<String>> result = stream.groupingByWithMapping(list);
		Assert.assertEquals(result.get('a'), Arrays.asList("A0", "A1"));
		Assert.assertEquals(result.get('b'), Arrays.asList("B0", "B1"));
		Assert.assertEquals(result.get('c'), Arrays.asList("C0"));
	}

	@Test
	public void joining() {
		List<String> list = Arrays.asList("aaa", "bbb", "ccc");
		String result = stream.joining(list);
		Assert.assertEquals(result, "<aaa-bbb-ccc>");
	}
}
