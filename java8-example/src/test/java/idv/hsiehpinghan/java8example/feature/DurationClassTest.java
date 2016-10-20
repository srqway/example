package idv.hsiehpinghan.java8example.feature;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalUnit;

import org.testng.Assert;
import org.testng.annotations.Test;

public class DurationClassTest {
	private DurationClass durationClass = new DurationClass();

	@Test
	public void getDuration_0() {
		LocalDateTime LocalDateTime_0 = LocalDateTime.parse("2015-01-01T18:30:45.000");
		LocalDateTime LocalDateTime_1 = LocalDateTime.parse("2015-01-01T18:30:46.235");
		Duration duration = durationClass.getDuration(LocalDateTime_0, LocalDateTime_1);
		long actual = duration.getSeconds();
		Assert.assertEquals(actual, 1);
	}

	@Test
	public void getDuration_1() {
		long amount = 2592000L;
		TemporalUnit unit = ChronoUnit.SECONDS;
		Duration duration = durationClass.getDuration(amount, unit);
		long actual = duration.toDays();
		Assert.assertEquals(actual, 30);
	}
}
