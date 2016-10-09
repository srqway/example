package idv.hsiehpinghan.javadesignpatternexample.masterworkerpattern.master;

import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

import idv.hsiehpinghan.javadesignpatternexample.masterworkerpattern.worker.Worker;
import idv.hsiehpinghan.javadesignpatternexample.masterworkerpattern.worker.impl.WorkerImpl;

public class Master {
	private Queue<Integer> workQueue;
	private Queue<Integer> resultQueue;
	private Map<String, Thread> threadMap;

	public Master(int workerAmount) {
		workQueue = new ConcurrentLinkedQueue<>();
		resultQueue = new ConcurrentLinkedQueue<>();
		threadMap = new HashMap<>(workerAmount);
		for (int i = 0; i < workerAmount; ++i) {
			Worker worker = new WorkerImpl(workQueue, resultQueue);
			Thread thread = new Thread(worker);
			threadMap.put("thread_" + i, thread);
		}
	}

	public void addWork(Integer input) {
		workQueue.add(input);
	}

	public void execute() {
		threadMap.forEach((s, t) -> {
			System.err.println("start thread(" + s + ")");
			t.start();
		});
	}

	public boolean isComplete() {
		return workQueue.size() == 0;
	}

	public Queue<Integer> getResultQueue() {
		return resultQueue;
	}
}
