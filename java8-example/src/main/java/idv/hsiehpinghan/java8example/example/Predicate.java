package idv.hsiehpinghan.java8example.example;

import java.util.List;
import java.util.stream.Collectors;

public class Predicate {

	public static List<Integer> predicate(List<Integer> list) {
		return list.stream().filter((t) -> {
			return t.compareTo(1) == 0;
		}).collect(Collectors.toList());
	}

}
