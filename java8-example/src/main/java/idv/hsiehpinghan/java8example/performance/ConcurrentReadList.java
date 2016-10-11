package idv.hsiehpinghan.java8example.performance;

import java.util.Vector;
import java.util.concurrent.CopyOnWriteArrayList;

public class ConcurrentReadList {

	public void bestPerformance(CopyOnWriteArrayList<String> copyOnWriteArrayList) {
		for (int i = 0, size = copyOnWriteArrayList.size(); i < size; ++i) {
			System.err.println(copyOnWriteArrayList.get(i));
		}
	}

	public void worstPerformance(Vector<String> vector) {
		for (int i = 0, size = vector.size(); i < size; ++i) {
			System.err.println(vector.get(i));
		}
	}
}
