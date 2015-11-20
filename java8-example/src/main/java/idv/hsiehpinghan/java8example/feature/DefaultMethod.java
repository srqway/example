package idv.hsiehpinghan.java8example.feature;

public class DefaultMethod {
	public String singleInterface(int i) {
		SingleInterface singleInterface = new SingleClass();
		return singleInterface.convertToString(i);
	}

	public String multiInterface() {
		MultiInterface1 singleInterface = new MultiClass();
		return singleInterface.getString();
	}

	public String staticInterface(int i) {
		return StaticInterface.getString(i);
	}

	private interface SingleInterface {
		default String convertToString(int i) {
			return String.valueOf(i);
		}
	}

	private class SingleClass implements SingleInterface {

	}

	private interface MultiInterface0 {
		default String getString() {
			return "MultiInterface0";
		}
	}

	private interface MultiInterface1 {
		default String getString() {
			return "MultiInterface1";
		}
	}

	private class MultiClass implements MultiInterface0, MultiInterface1 {
		public String getString() {
			return MultiInterface0.super.getString();
		}
	}

	private interface StaticInterface {
		static String getString(int i) {
			return String.valueOf(i);
		}
	}

}
