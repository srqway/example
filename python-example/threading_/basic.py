#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

from threading import Thread
import time

print("<<main 0>>")
class class_0(Thread):
    def __init__(self, threadId):
        Thread.__init__(self)
        self.threadId = threadId
    
    def run(self):
        for i in range(3):
            print("threadId : %s; index : %d" % (self.threadId, i))
            time.sleep(1)

def main_0():
    for i in range(3):
        thread = class_0(i);
        thread.start()
    time.sleep(5)

main_0()

print("<<main 1>>")
class class_1(Thread):
    def __init__(self, threadId):
        Thread.__init__(self)
        self.threadId = threadId
    
    def run(self):
        for i in range(3):
            print("threadId : %s; index : %d" % (self.threadId, i))
            time.sleep(1)

def main_1():
    for i in range(3):
        thread = class_1(i);
        thread.start()
        thread.join()

main_1()
