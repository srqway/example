package idv.hsiehpinghan.java8example.utility;

import java.util.ArrayList;
import java.util.List;

public class ConverterUtility {

	public static String convertToString(List<Integer> list) {
		StringBuilder sb = new StringBuilder();
		for (Integer i : list) {
			sb.append(i);
		}
		return sb.toString();
	}

	public static List<Integer> convertToRevertList(List<Integer> list) {
		List<Integer> result = new ArrayList<Integer>();
		for (int i = list.size() - 1; i >= 0; --i) {
			result.add(list.get(i));
		}
		return result;
	}

}
