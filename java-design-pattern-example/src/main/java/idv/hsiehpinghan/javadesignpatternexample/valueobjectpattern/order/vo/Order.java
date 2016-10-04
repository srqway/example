package idv.hsiehpinghan.javadesignpatternexample.valueobjectpattern.order.vo;

import java.io.Serializable;

public class Order implements Serializable {
	private static final long serialVersionUID = 1L;
	private int orderId;
	private String clientName;
	private int number;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", clientName=" + clientName + ", number=" + number + "]";
	}

}
