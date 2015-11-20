package idv.hsiehpinghan.java8example.feature;

import java.util.List;

public class Consumer {

	public static void consumer(List<Integer> list) {
		list.forEach((t) -> {
			System.err.println("consumer :" + t);
		});
	}

}
