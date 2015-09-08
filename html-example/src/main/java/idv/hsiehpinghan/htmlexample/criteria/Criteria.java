package idv.hsiehpinghan.htmlexample.criteria;

import idv.hsiehpinghan.htmlexample.enumeration.Enumeration;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Criteria {
	private Integer integerValue;
	private Float floatValue;
	@DateTimeFormat(iso = ISO.DATE)
	@JsonFormat(shape = JsonFormat.Shape.STRING)
	private LocalDate dateValue;
	private String stringValue;
	private Enumeration enumerationValue;

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

	public LocalDate getDateValue() {
		return dateValue;
	}

	public void setDateValue(LocalDate dateValue) {
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

}
