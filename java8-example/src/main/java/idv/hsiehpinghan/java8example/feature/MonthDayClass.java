package idv.hsiehpinghan.java8example.feature;

import java.time.MonthDay;
import java.time.format.DateTimeFormatter;

public class MonthDayClass {

	public MonthDay parse(String text, DateTimeFormatter formatter) {
		return MonthDay.parse(text, formatter);
	}

	public MonthDay parse(String text) {
		return MonthDay.parse(text);
	}
}
