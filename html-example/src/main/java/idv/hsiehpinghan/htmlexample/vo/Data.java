package idv.hsiehpinghan.htmlexample.vo;

import java.util.Date;

public class Data {
	private Integer integerValue;
	private Float floatValue;
	private Date date;

	public Data(Integer integerValue, Float floatValue, Date date) {
		super();
		this.integerValue = integerValue;
		this.floatValue = floatValue;
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
