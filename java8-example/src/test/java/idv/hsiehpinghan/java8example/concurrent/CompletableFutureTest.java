package idv.hsiehpinghan.java8example.concurrent;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

import org.testng.annotations.Test;

public class CompletableFutureTest {
	@Test
	public void thenCompose() throws InterruptedException, ExecutionException {
		CompletableFuture<String> completableFuture_0 = getCompletableFuture(3000, "futureAction_0_0")
				.thenCompose(str -> {
					System.err.println(String.format("processing %s", str));
					return getCompletableFuture(3000, "futureAction_0_1");
				}).thenCompose(str -> {
					System.err.println(String.format("processing %s", str));
					return getCompletableFuture(3000, "futureAction_0_2");
				});
		CompletableFuture<String> completableFuture_1 = getCompletableFuture(2000, "futureAction_1_0")
				.thenCompose(str -> {
					System.err.println(String.format("processing %s", str));
					return getCompletableFuture(4000, "futureAction_1_1");
				}).thenCompose(str -> {
					System.err.println(String.format("processing %s", str));
					return getCompletableFuture(2000, "futureAction_1_2");
				});
		System.err.println(String.format("%s finish.", completableFuture_0.get()));
		System.err.println(String.format("%s finish.", completableFuture_1.get()));
	}

	private CompletableFuture<String> getCompletableFuture(long sleepMillis, String name) {
		return CompletableFuture.supplyAsync(() -> {
			try {
				Thread.sleep(sleepMillis);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			return String.format("%s finish.", name);
		});
	}
}
