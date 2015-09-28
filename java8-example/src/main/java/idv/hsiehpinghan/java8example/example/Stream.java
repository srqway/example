package idv.hsiehpinghan.java8example.example;

import idv.hsiehpinghan.java8example.utility.ConverterUtility;

import java.util.List;
import java.util.stream.Collectors;

public class Stream {
	private static StringBuilder sb = new StringBuilder();

	public String forEach(List<Integer> list) {
		list.forEach(Stream::addToStringBuilder);
		return sb.toString();
	}

	public String map(List<Integer> list) {
		List<Integer> result = list.stream().map(t -> {
			return t + 1;
		}).collect(Collectors.toList());
		return ConverterUtility.convertToString(result);
	}

	public Integer reduce(List<Integer> list) {
		return list.stream().reduce((total, ele) -> {
			return total += ele;
		}).get();
	}

	public String filter(List<Integer> list) {
		List<Integer> result = list.stream().filter(i -> {
			return i > 0;
		}).collect(Collectors.toList());
		return ConverterUtility.convertToString(result);
	}

	public String limit(List<Integer> list) {
		List<Integer> result = list.stream().limit(2)
				.collect(Collectors.toList());
		return ConverterUtility.convertToString(result);
	}

	public String sorted(List<Integer> list) {
		List<Integer> revertList = ConverterUtility.convertToRevertList(list);
		List<Integer> result = revertList.stream().sorted()
				.collect(Collectors.toList());
		return ConverterUtility.convertToString(result);
	}

	public String parallelStream(List<Integer> list) {
		List<Integer> result = list.parallelStream().filter(i -> {
			return i > 0;
		}).collect(Collectors.toList());
		return ConverterUtility.convertToString(result);
	}

	public String[] toArray(List<Integer> list) {
		return list.stream().map((t) -> {
			return String.valueOf(t);
		}).toArray((size) -> {
			return new String[size];
		});
	}

	private static void addToStringBuilder(int i) {
		sb.append(i);
	}

}
