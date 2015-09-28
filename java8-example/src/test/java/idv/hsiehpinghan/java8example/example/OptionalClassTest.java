package idv.hsiehpinghan.java8example.example;

import idv.hsiehpinghan.java8example.utility.GeneratorUtility;

import java.util.List;
import java.util.Optional;

import org.testng.Assert;
import org.testng.annotations.Test;

public class OptionalClassTest {
	private static final String NAME = "flatMap";
	private OptionalClass optionalClass = new OptionalClass();

	@Test
	public void sum() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Integer actual = optionalClass.sum(list);
		Assert.assertEquals(actual, Integer.valueOf(3));
	}

	@Test
	public void flatMap() {
		String name = OptionalClass.flatMap(Optional
				.ofNullable(generateFlatMap_1()));
		Assert.assertEquals(name, NAME);
	}

	@Test
	public void map() {
		String name = OptionalClass.map(generateMap_1());
		Assert.assertEquals(name, NAME);
	}

	private OptionalClass.FlatMap_1 generateFlatMap_1() {
		OptionalClass.FlatMap_1 flatMap_1 = new OptionalClass.FlatMap_1();
		flatMap_1.setFlatMap_2(Optional.ofNullable(generateFlatMap_2()));
		return flatMap_1;
	}

	private OptionalClass.FlatMap_1.FlatMap_2 generateFlatMap_2() {
		OptionalClass.FlatMap_1.FlatMap_2 flatMap_2 = new OptionalClass.FlatMap_1.FlatMap_2();
		flatMap_2.setFlatMap_3(Optional.ofNullable(generateFlatMap_3()));
		return flatMap_2;
	}

	private OptionalClass.FlatMap_1.FlatMap_2.FlatMap_3 generateFlatMap_3() {
		OptionalClass.FlatMap_1.FlatMap_2.FlatMap_3 flatMap_3 = new OptionalClass.FlatMap_1.FlatMap_2.FlatMap_3();
		flatMap_3.setName(Optional.ofNullable(NAME));
		return flatMap_3;
	}

	private OptionalClass.Map_1 generateMap_1() {
		OptionalClass.Map_1 Map_1 = new OptionalClass.Map_1();
		Map_1.setMap_2(generateMap_2());
		return Map_1;
	}

	private OptionalClass.Map_1.Map_2 generateMap_2() {
		OptionalClass.Map_1.Map_2 Map_2 = new OptionalClass.Map_1.Map_2();
		Map_2.setMap_3(generateMap_3());
		return Map_2;
	}

	private OptionalClass.Map_1.Map_2.Map_3 generateMap_3() {
		OptionalClass.Map_1.Map_2.Map_3 Map_3 = new OptionalClass.Map_1.Map_2.Map_3();
		Map_3.setName(NAME);
		return Map_3;
	}
}
