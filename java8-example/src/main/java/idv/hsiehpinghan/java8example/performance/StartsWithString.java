package idv.hsiehpinghan.java8example.performance;

public class StartsWithString {

	public boolean bestPerformance(String string, String beginString) {
		int length = beginString.length();
		for (int i = 0; i < length; ++i) {
			if (string.charAt(i) != beginString.charAt(i)) {
				return false;
			}
		}
		return true;
	}

	public boolean worstPerformance(String string, String beginString) {
		return string.startsWith(beginString);
	}

}
