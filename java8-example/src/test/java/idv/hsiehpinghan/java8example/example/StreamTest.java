package idv.hsiehpinghan.java8example.example;

import java.util.ArrayList;
import java.util.List;

import org.testng.Assert;
import org.testng.annotations.Test;

public class StreamTest {
	private Stream stream = new Stream();

	@Test
	public void forEach() {
		List<Integer> list = generateList();
		Assert.assertEquals(stream.forEach(list), "012");
	}

	@Test
	public void map() {
		List<Integer> list = generateList();
		Assert.assertEquals(stream.map(list), "123");
	}
	
	@Test
	public void filter() {
		List<Integer> list = generateList();
		Assert.assertEquals(stream.filter(list), "12");
	}
	
	@Test
	public void limit() {
		List<Integer> list = generateList();
		Assert.assertEquals(stream.limit(list), "01");
	}
	
	@Test
	public void sorted() {
		List<Integer> list = generateList();
		Assert.assertEquals(stream.sorted(list), "012");
	}
	
	@Test
	public void parallelStream() {
		List<Integer> list = generateList();
		Assert.assertEquals(stream.parallelStream(list), "12");
	}
	
	@Test
	public void toArray() {
		List<Integer> list = generateList();
		Assert.assertEquals(stream.toArray(list), new String[]{"0", "1", "2"});
	}
	
	private List<Integer> generateList() {
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < 3; ++i) {
			list.add(i);
		}
		return list;
	}
}
