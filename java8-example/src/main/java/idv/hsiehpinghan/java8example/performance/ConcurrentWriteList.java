package idv.hsiehpinghan.java8example.performance;

import java.util.Vector;
import java.util.concurrent.CopyOnWriteArrayList;

public class ConcurrentWriteList {

	public void bestPerformance(Vector<String> vector, String string) {
		vector.add(string);
	}

	public void worstPerformance(CopyOnWriteArrayList<String> copyOnWriteArrayList, String string) {
		copyOnWriteArrayList.add(string);
	}

}
