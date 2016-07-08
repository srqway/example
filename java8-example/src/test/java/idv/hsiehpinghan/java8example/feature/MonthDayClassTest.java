package idv.hsiehpinghan.java8example.feature;

import java.time.MonthDay;
import java.time.format.DateTimeFormatter;

import org.testng.Assert;
import org.testng.annotations.Test;

public class MonthDayClassTest {
	private MonthDayClass monthDayClass = new MonthDayClass();

	@Test
	public void parse() {
		subParse_0();
		subParse_1();
	}

	private void subParse_0() {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("香港M月dd日電");
		MonthDay monthDay = monthDayClass.parse("香港6月23日電", formatter);
		Assert.assertEquals(monthDay.toString(), "--06-23");
	}

	private void subParse_1() {
		MonthDay monthDay = monthDayClass.parse("--06-23");
		Assert.assertEquals(monthDay.toString(), "--06-23");
	}
}
