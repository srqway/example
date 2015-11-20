package idv.hsiehpinghan.java8example.feature;

import java.time.LocalDate;
import java.time.Period;

public class PeriodClass {

	public Period getPeriod(LocalDate localDate_0, LocalDate localDate_1) {
		return Period.between(localDate_0, localDate_1);
	}
}
