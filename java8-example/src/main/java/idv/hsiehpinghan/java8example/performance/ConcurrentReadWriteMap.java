package idv.hsiehpinghan.java8example.performance;

import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class ConcurrentReadWriteMap {

	public void bestPerformance(ConcurrentHashMap<Integer, String> concurrentHashMap, Integer key, String value) {
		concurrentHashMap.put(key, value);
	}

	public void worstPerformance(Map<Integer, String> map, Integer key, String value) {
		Map<Integer, String> m = Collections.synchronizedMap(map);
		m.put(key, value);
	}
}
