package idv.hsiehpinghan.java8example.performance;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

public class LoopList {
	public void bestPerformance(List<String> list) {
		if (list instanceof RandomAccess) {
			for (int i = 0, size = list.size(); i < size; ++i) {
				System.err.println(list.get(i));
			}
		} else {
			Iterator<String> iterator = list.iterator();
			while (iterator.hasNext()) {
				System.err.println(iterator.next());
			}
		}
	}

}
