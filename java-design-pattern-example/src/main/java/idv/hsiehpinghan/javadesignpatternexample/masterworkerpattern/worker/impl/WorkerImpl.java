package idv.hsiehpinghan.javadesignpatternexample.masterworkerpattern.worker.impl;

import java.util.Queue;

import idv.hsiehpinghan.javadesignpatternexample.masterworkerpattern.worker.Worker;

public class WorkerImpl extends Worker {

	public WorkerImpl(Queue<Integer> workQueue, Queue<Integer> resultQueue) {
		super(workQueue, resultQueue);
	}

	@Override
	protected Integer process(Integer input) {
		return input + 1;
	}

}
