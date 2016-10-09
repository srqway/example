package idv.hsiehpinghan.java8example.performance;

public class Variable {
	@SuppressWarnings("unused")
	private int sum = 0;

	public void bestPerformance() {
		@SuppressWarnings("unused")
		int sum = 0;
		for (int i = 0; i < 10; ++i) {
			sum += i;
		}

	}

	public void worstPerformance(String string, String beginString) {
		for (int i = 0; i < 10; ++i) {
			sum += i;
		}
	}
}
