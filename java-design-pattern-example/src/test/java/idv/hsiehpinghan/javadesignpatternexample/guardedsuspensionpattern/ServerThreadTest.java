package idv.hsiehpinghan.javadesignpatternexample.guardedsuspensionpattern;

import org.testng.annotations.Test;

public class ServerThreadTest {
	private final long SLEEP_SECONDS = 5;
	private final int SERVER_THREAD_AMOUNT = 3;
	private final int CLIENT_THREAD_AMOUNT = 10;

	@Test
	public void run() throws InterruptedException {
		RequestQueue requestQueue = new RequestQueue();
		for (int i = 0; i < SERVER_THREAD_AMOUNT; ++i) {
			ServerThread serverThread = new ServerThread("server_" + i, requestQueue);
			serverThread.setDaemon(true);
			serverThread.start();
		}
		for (int i = 0; i < CLIENT_THREAD_AMOUNT; ++i) {
			ClientThread ClientThread = new ClientThread("client_" + i, requestQueue);
			ClientThread.setDaemon(true);
			ClientThread.start();
		}
		Thread.sleep(SLEEP_SECONDS * 1000);
	}
}
