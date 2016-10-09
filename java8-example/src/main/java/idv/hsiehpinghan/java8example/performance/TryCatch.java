package idv.hsiehpinghan.java8example.performance;

public class TryCatch {
	public void bestPerformance() {
		try {
			for (int i = 0; i < 10; ++i) {
				System.err.println(i);
			}
		} catch (Exception e) {
		}
	}

	public void worstPerformance(String string, String beginString) {
		for (int i = 0; i < 10; ++i) {
			try {
				System.err.println(i);
			} catch (Exception e) {
			}
		}
	}
}
