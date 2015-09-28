package idv.hsiehpinghan.java8example.example;

import java.util.List;
import java.util.stream.Collectors;

public class ConstructorReference {
	private Integer i;

	public ConstructorReference(Integer i) {
		this.i = i;
	}

	public static List<ConstructorReference> convertToConstructorReferences(
			List<Integer> list) {
		return list.stream().map(ConstructorReference::new)
				.collect(Collectors.toList());
	}

	public Integer getI() {
		return i;
	}

}
