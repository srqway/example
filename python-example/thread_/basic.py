#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import thread
import time

print("<<function 0>>")
def print_0(i):
    print(i)

def function_0():
    for i in range(3):
        thread.start_new_thread(print_0, (i,))
    time.sleep(1)

function_0()

print("<<function 1>>")
def print_1(i, lock):
    lock.acquire()
    time.sleep(1)
    print(i)
    lock.release()
    time.sleep(1)

def function_1():
    lock = thread.allocate_lock()
    for i in range(3):
        thread.start_new_thread(print_1, (i, lock))
    time.sleep(5)

function_1()
