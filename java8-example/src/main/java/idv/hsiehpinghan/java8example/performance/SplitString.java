package idv.hsiehpinghan.java8example.performance;

import java.util.StringTokenizer;

public class SplitString {

	public String[] bestPerformance(String[] stringArray, String string, String delim) {
		String tmp = string;
		int i = 0;
		while (true) {
			int index = tmp.indexOf(delim);
			if (index < 0) {
				break;
			}
			String splitStr = tmp.substring(0, index);
			stringArray[i] = splitStr;
			tmp = tmp.substring(index + 1);
			++i;
		}
		return stringArray;
	}

	public String[] averagePerformance(String[] stringArray, String string, String delim) {
		StringTokenizer stringTokenizer = new StringTokenizer(string, delim);
		int i = 0;
		while (stringTokenizer.hasMoreTokens()) {
			stringArray[i] = stringTokenizer.nextToken();
			++i;
		}
		return stringArray;
	}

	public String[] worstPerformance(String string, String delim) {
		return string.split(delim);
	}

}
