package idv.hsiehpinghan.java8example.performance;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public class ConcurrentReadSet {

	public void bestPerformance(CopyOnWriteArraySet<String> copyOnWriteArraySet, String string) {
		for (String str : copyOnWriteArraySet) {
			if (string.equals(str)) {
				System.err.println(str);
			}
		}
	}

	public void worstPerformance(Set<String> set, String string) {
		Set<String> s = Collections.synchronizedSet(set);
		for (String str : s) {
			if (string.equals(str)) {
				System.err.println(str);
			}
		}
	}
}
