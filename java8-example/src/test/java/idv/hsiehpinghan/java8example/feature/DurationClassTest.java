package idv.hsiehpinghan.java8example.feature;

import idv.hsiehpinghan.java8example.feature.DurationClass;

import java.time.Duration;
import java.time.LocalDateTime;

import org.testng.Assert;
import org.testng.annotations.Test;

public class DurationClassTest {
	private DurationClass durationClass = new DurationClass();

	@Test
	public void getDuration() {
		LocalDateTime LocalDateTime_0 = LocalDateTime
				.parse("2015-01-01T18:30:45.000");
		LocalDateTime LocalDateTime_1 = LocalDateTime
				.parse("2015-01-01T18:30:46.235");
		Duration duration = durationClass.getDuration(LocalDateTime_0,
				LocalDateTime_1);
		long actual = duration.getSeconds();
		Assert.assertEquals(actual, 1);
	}
}
