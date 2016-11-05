package idv.hsiehpinghan.antexample.example;

import org.apache.log4j.Logger;

public class Main {
	private static Logger logger = Logger.getLogger(Main.class);

	public static void main(String[] args) {
		String message = getMessage();
		logger.info(message);
	}

	public static String getMessage() {
		return "ant example.";
	}
}
