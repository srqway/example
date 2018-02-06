package idv.hsiehpinghan.java8example.feature;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TreeSet;
import java.util.stream.Collectors;

public class Stream {
	private static StringBuilder sb = new StringBuilder();

	public String forEach(List<Integer> list) {
		list.forEach(Stream::addToStringBuilder);
		return sb.toString();
	}

	public String map(List<Integer> list) {
		return list.stream().map(t -> {
			return String.valueOf(t + 1);
		}).collect(Collectors.joining());
	}

	public Integer reduce(List<Integer> list) {
		return list.stream().reduce((total, ele) -> {
			return total += ele;
		}).get();
	}

	public String filter(List<Integer> list) {
		return list.stream().filter(i -> {
			return i > 0;
		}).map(t -> {
			return String.valueOf(t);
		}).collect(Collectors.joining());
	}

	public String limit(List<Integer> list) {
		return list.stream().limit(2).map(t -> {
			return String.valueOf(t);
		}).collect(Collectors.joining());
	}

	public String sorted(List<Integer> list) {
		return list.stream().sorted((o1, o2) -> {
			return -o1.compareTo(o2);
		}).sorted().map(t -> {
			return String.valueOf(t);
		}).collect(Collectors.joining());
	}

	public String parallelStream(List<Integer> list) {
		return list.parallelStream().filter(i -> {
			return i > 0;
		}).map(t -> {
			return String.valueOf(t);
		}).collect(Collectors.joining());
	}

	public String[] toArray(List<Integer> list) {
		return list.stream().map((t) -> {
			return String.valueOf(t);
		}).toArray((size) -> {
			return new String[size];
		});
	}

	public Map<Integer, Integer> listToMap(List<Integer> list) {
		return list.stream().collect(Collectors.toMap((i) -> {
			return i;
		}, (i) -> {
			return i;
		}));
	}

	public List<Integer> flatMap(List<Integer> list_0, List<Integer> list_1) {
		return java.util.stream.Stream.of(list_0, list_1).flatMap(numbers -> numbers.stream())
				.collect(Collectors.toList());
	}

	public Collection<Integer> toCollection(List<Integer> list) {
		return list.stream().collect(Collectors.toCollection(TreeSet::new));
	}

	public Optional<Integer> minBy(List<Integer> list) {
		return list.stream().collect(Collectors.minBy(Comparator.comparing(Integer::intValue)));
	}

	public Double averagingInt(List<Integer> list) {
		return list.stream().collect(Collectors.averagingInt(Integer::intValue));
	}

	public Map<Boolean, List<Integer>> partitioningBy(List<Integer> list) {
		return list.stream().collect(Collectors.partitioningBy(i -> i % 2 == 0));
	}

	public Map<Character, List<String>> groupingBy(List<String> list) {
		return list.stream().collect(Collectors.groupingBy(s -> s.charAt(0)));
	}

	public Map<Character, Long> groupingByWithCounting(List<String> list) {
		return list.stream().collect(Collectors.groupingBy(s -> s.charAt(0), Collectors.counting()));
	}

	public Map<Character, List<String>> groupingByWithMapping(List<String> list) {
		return list.stream().collect(
				Collectors.groupingBy(s -> s.charAt(0), Collectors.mapping(String::toUpperCase, Collectors.toList())));
	}

	public String joining(List<String> list) {
		return list.stream().collect(Collectors.joining("-", "<", ">"));
	}

	public List<String> peek(List<String> list) {
		return list.stream().peek(str -> System.err.println(String.format("peek String(%s)", str)))
				.collect(Collectors.toList());
	}

	private static void addToStringBuilder(int i) {
		sb.append(i);
	}
}
