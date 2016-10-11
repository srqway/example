package idv.hsiehpinghan.java8example.performance;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public class ConcurrentWriteSet {

	public void bestPerformance(Set<String> set, String string) {
		Set<String> s = Collections.synchronizedSet(set);
		s.add(string);
	}

	public void worstPerformance(CopyOnWriteArraySet<String> copyOnWriteArraySet, String string) {
		copyOnWriteArraySet.add(string);
	}

}
