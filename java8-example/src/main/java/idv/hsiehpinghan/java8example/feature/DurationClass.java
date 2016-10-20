package idv.hsiehpinghan.java8example.feature;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.temporal.TemporalUnit;

public class DurationClass {

	public Duration getDuration(LocalDateTime LocalDateTime_0, LocalDateTime LocalDateTime_1) {
		return Duration.between(LocalDateTime_0, LocalDateTime_1);
	}

	public Duration getDuration(long amount, TemporalUnit unit) {
		return Duration.of(amount, unit);
	}

}
