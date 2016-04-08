#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import threading
import time
import Queue

print("<<queue 0>>")
class Producer_0(threading.Thread):
    def __init__(self, q, i):
        threading.Thread.__init__(self)
        self.q = q
        self.i = i
    
    def run(self):
        self.q.put(self.i)
        print("Producer - currentThread : %s; job : %d" % (threading.currentThread(), self.i))

class Consumer_0(threading.Thread):
    def __init__(self, q):
        threading.Thread.__init__(self)
        self.q = q
    
    def run(self):
        while True:
            if self.q.empty():
                print("queue is empty.")
                break
            else:
                job = self.q.get()
                print("Consumer - currentThread : %s; job : %d" % (threading.currentThread(), job))
                self.q.task_done()
                time.sleep(1)

def main_0():
    q = Queue.Queue(3)
    for i in range(10):
        producer = Producer_0(q, i)
        producer.start()
    consumer = Consumer_0(q)
    consumer.start()
    q.join()

main_0()