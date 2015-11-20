package idv.hsiehpinghan.java8example.feature;

import idv.hsiehpinghan.java8example.feature.PeriodClass;

import java.time.LocalDate;
import java.time.Period;

import org.testng.Assert;
import org.testng.annotations.Test;

public class PeriodClassTest {
	private PeriodClass periodClass = new PeriodClass();

	@Test
	public void getLocalDateTime() {
		LocalDate LocalDate_0 = LocalDate.parse("2015-01-01");
		LocalDate LocalDate_1 = LocalDate.parse("2015-01-15");
		Period period = periodClass.getPeriod(LocalDate_0, LocalDate_1);
		int actual = period.getDays();
		Assert.assertEquals(actual, 14);
	}
}
