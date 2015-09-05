package idv.hsiehpinghan.java8example.example;

import java.util.List;

public class MethodReference {
	private static StringBuilder sb = new StringBuilder();

	public String convertToString(List<Integer> list) {
		list.forEach(MethodReference::addToStringBuilder);
		return sb.toString();
	}

	public static void addToStringBuilder(int i) {
		sb.append(i);
	}
}
