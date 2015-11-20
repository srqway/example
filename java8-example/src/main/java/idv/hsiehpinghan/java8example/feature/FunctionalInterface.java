package idv.hsiehpinghan.java8example.feature;

import java.util.function.Predicate;

public class FunctionalInterface {
	public boolean predicate(Integer i, Predicate<Integer> predicate) {
		return predicate.test(i);
	}
}
