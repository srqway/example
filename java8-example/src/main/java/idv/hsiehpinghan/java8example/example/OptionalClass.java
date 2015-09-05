package idv.hsiehpinghan.java8example.example;

import java.util.List;
import java.util.Optional;

public class OptionalClass {
	public Integer sum(List<Integer> list) {
		Integer sum = 0;
		for(Integer i : list) {
			Optional<Integer> opt = Optional.ofNullable(i);
			Integer val = opt.orElse(0);
			sum += val;
		}
		return sum;
	}
}
