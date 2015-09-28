package idv.hsiehpinghan.java8example.example;

import java.util.List;
import java.util.stream.Collectors;

public class Function {

	public static List<String> function(List<Integer> list) {
		return list.stream().map(t -> {
			return String.valueOf(t);
		}).collect(Collectors.toList());
	}

}
