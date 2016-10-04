package idv.hsiehpinghan.javadesignpatternexample.valueobjectpattern.order;

import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;

import org.testng.annotations.Test;

import idv.hsiehpinghan.javadesignpatternexample.valueobjectpattern.order.impl.OrderManagerImpl;
import idv.hsiehpinghan.javadesignpatternexample.valueobjectpattern.order.vo.Order;

public class OrderManagerTest {
	private final String RMI_SERVICE_NAME = "orderManager";
	private final int RMI_ACTIVATION_PORT = 1099;
	private final int ORDER_ID = 1;

	@Test
	public void rmiValueObjectText()
			throws MalformedURLException, RemoteException, NotBoundException, InterruptedException {
		startRmiServer();
		sleep(3);
		startRmiClient();
		sleep(2);
	}

	private void startRmiClient() throws MalformedURLException, RemoteException, NotBoundException {
		RmiClient rmiClient = new RmiClient();
		rmiClient.setDaemon(true);
		rmiClient.start();
	}

	private void startRmiServer() {
		RmiServer rmiServer = new RmiServer();
		rmiServer.setDaemon(true);
		rmiServer.start();
	}

	private void sleep(int seconds) {
		try {
			Thread.sleep(1000 * seconds);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	private class RmiClient extends Thread {
		@Override
		public void run() {
			try {
				OrderManager orderManager = (OrderManager) Naming.lookup(RMI_SERVICE_NAME);
				Order order = orderManager.getOrder(ORDER_ID);
				System.err.println(order);
			} catch (RemoteException e) {
				e.printStackTrace();
			} catch (MalformedURLException e) {
				e.printStackTrace();
			} catch (NotBoundException e) {
				e.printStackTrace();
			}
		}
	}

	private class RmiServer extends Thread {
		@Override
		public synchronized void run() {
			try {
				OrderManager orderManager = new OrderManagerImpl();
				LocateRegistry.createRegistry(RMI_ACTIVATION_PORT);
				Naming.rebind(RMI_SERVICE_NAME, orderManager);
				System.err.println("rmi server ready.");
			} catch (RemoteException e) {
				e.printStackTrace();
			} catch (MalformedURLException e) {
				e.printStackTrace();
			}
		}
	}
}
