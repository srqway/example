package idv.hsiehpinghan.javadesignpatternexample.valueobjectpattern.order;

import java.rmi.Remote;
import java.rmi.RemoteException;

import idv.hsiehpinghan.javadesignpatternexample.valueobjectpattern.order.vo.Order;

public interface OrderManager extends Remote {
	Order getOrder(int orderId) throws RemoteException;
}