package idv.hsiehpinghan.java8example.example;

import java.text.ParseException;
import java.time.LocalDateTime;
import java.util.Date;

import org.apache.commons.lang3.time.DateUtils;
import org.testng.Assert;
import org.testng.annotations.Test;

public class BackwardCompatibilityTest {
	private BackwardCompatibility backwardCompatibility = new BackwardCompatibility();

	@Test
	public void convertToLocalDateTime() throws ParseException {
		int year = 2015;
		int month = 11;
		int day = 22;
		Date date = DateUtils.parseDate(year + "-" + month + "-" + day,
				"yyyy-MM-dd");
		LocalDateTime localDateTime = backwardCompatibility
				.convertToLocalDateTime(date);
		Assert.assertEquals(localDateTime.getYear(), year);
		Assert.assertEquals(localDateTime.getMonthValue(), month);
		Assert.assertEquals(localDateTime.getDayOfMonth(), day);
	}
}
