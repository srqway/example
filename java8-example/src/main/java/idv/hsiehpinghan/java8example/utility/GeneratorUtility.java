package idv.hsiehpinghan.java8example.utility;

import java.util.ArrayList;
import java.util.List;

public class GeneratorUtility {

	public static List<Integer> generateIntegerList() {
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < 3; ++i) {
			list.add(i);
		}
		return list;
	}

}
