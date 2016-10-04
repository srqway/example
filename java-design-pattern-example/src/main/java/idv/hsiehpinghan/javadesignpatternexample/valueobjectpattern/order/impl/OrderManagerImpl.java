package idv.hsiehpinghan.javadesignpatternexample.valueobjectpattern.order.impl;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

import idv.hsiehpinghan.javadesignpatternexample.valueobjectpattern.order.OrderManager;
import idv.hsiehpinghan.javadesignpatternexample.valueobjectpattern.order.vo.Order;

public class OrderManagerImpl extends UnicastRemoteObject implements OrderManager {
	public OrderManagerImpl() throws RemoteException {
		super();
	}

	private static final long serialVersionUID = 1L;

	@Override
	public Order getOrder(int orderId) throws RemoteException {
		Order order = new Order();
		order.setOrderId(orderId);
		order.setClientName("clientName");
		order.setNumber(3);
		return order;
	}

}
