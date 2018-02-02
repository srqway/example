package idv.hsiehpinghan.java8example.feature;

import java.util.List;
import java.util.Map;
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

	private static void addToStringBuilder(int i) {
		sb.append(i);
	}

}
