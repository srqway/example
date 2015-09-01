package idv.hsiehpinghan.htmlexample.vo;

import idv.hsiehpinghan.htmlexample.enumeration.Enumeration;

import java.util.Calendar;
import java.util.Date;

public class Data {
	private Integer integerValue;
	private Float floatValue;
	private Date dateValue;
	private String stringValue;
	private Enumeration enumerationValue;

	public Data() {}

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

	public Date getDateValue() {
		return dateValue;
	}

	public void setDateValue(Date dateValue) {
		this.dateValue = dateValue;
	}

	public String getStringValue() {
		return stringValue;
	}

	public void setStringValue(String stringValue) {
		this.stringValue = stringValue;
	}

	public Enumeration getEnumerationValue() {
		return enumerationValue;
	}

	public void setEnumerationValue(Enumeration enumerationValue) {
		this.enumerationValue = enumerationValue;
	}

	public static Data generateData(int i) {
		Integer integerValue = Integer.valueOf(i);
		Float floatValue = Float.valueOf(i + "." + i);
		Date dateValue = Calendar.getInstance().getTime();
		String stringValue = String.valueOf(i);
		Enumeration[] enumArr = Enumeration.values();
		Enumeration enumerationValue = enumArr[(i % enumArr.length)];
		Data data = new Data(integerValue, floatValue, dateValue, stringValue,
				enumerationValue);
		return data;
	}

	private Data(Integer integerValue, Float floatValue, Date dateValue,
			String stringValue, Enumeration enumerationValue) {
		super();
		this.integerValue = integerValue;
		this.floatValue = floatValue;
		this.dateValue = dateValue;
		this.stringValue = stringValue;
		this.enumerationValue = enumerationValue;
	}
}
