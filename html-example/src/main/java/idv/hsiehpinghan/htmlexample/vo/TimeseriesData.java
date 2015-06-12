package idv.hsiehpinghan.htmlexample.vo;

import java.util.Date;

public class TimeseriesData {
	private Date date;
	private Integer integerValue;
	private Float floatValue;

	public TimeseriesData(Date date, Integer integerValue, Float floatValue) {
		super();
		this.date = date;
		this.integerValue = integerValue;
		this.floatValue = floatValue;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Integer getIntegerValue() {
		return integerValue;
	}

	public void setIntegerValue(Integer integerValue) {
		this.integerValue = integerValue;
	}

	public Float getFloatValue() {
		return floatValue;
	}

	public void setFloatValue(Float floatValue) {
		this.floatValue = floatValue;
	}

}
