package idv.hsiehpinghan.java8example.feature;

import java.time.Duration;
import java.time.LocalDateTime;

public class DurationClass {

	public Duration getDuration(LocalDateTime LocalDateTime_0,
			LocalDateTime LocalDateTime_1) {
		return Duration.between(LocalDateTime_0, LocalDateTime_1);
	}
}
