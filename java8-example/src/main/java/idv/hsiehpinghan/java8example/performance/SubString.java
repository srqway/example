package idv.hsiehpinghan.java8example.performance;

public class SubString {
	/**
	 * Less memory usage.
	 * 
	 * @param string
	 * @param beginIndex
	 * @param endIndex
	 * @return
	 */
	public String getSubstring(String string, int beginIndex, int endIndex) {
		return new String(string.substring(beginIndex, endIndex));
	}
}
