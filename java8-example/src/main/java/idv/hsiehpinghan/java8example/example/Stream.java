package idv.hsiehpinghan.java8example.example;

import java.util.ArrayList;
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
		return convertToString(result);
	}

	public String filter(List<Integer> list) {
		List<Integer> result = list.stream().filter(i -> {
			return i > 0;
		}).collect(Collectors.toList());
		return convertToString(result);
	}

	public String limit(List<Integer> list) {
		List<Integer> result = list.stream().limit(2)
				.collect(Collectors.toList());
		return convertToString(result);
	}

	public String sorted(List<Integer> list) {
		List<Integer> revertList = convertToRevertList(list);
		List<Integer> result = revertList.stream().sorted()
				.collect(Collectors.toList());
		return convertToString(result);
	}
	
	public String parallelStream(List<Integer> list) {
		List<Integer> result = list.parallelStream().filter(i -> {
			return i > 0;
		}).collect(Collectors.toList());
		return convertToString(result);
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

	private String convertToString(List<Integer> list) {
		StringBuilder sb = new StringBuilder();
		for (Integer i : list) {
			sb.append(i);
		}
		return sb.toString();
	}

	private List<Integer> convertToRevertList(List<Integer> list) {
		List<Integer> result = new ArrayList<Integer>();
		for(int i = list.size() - 1; i >= 0; --i) {
			result.add(list.get(i));
		}
		return result;
	}
}
