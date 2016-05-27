#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import Queue

priorityQueue = Queue.PriorityQueue()
priorityQueue.put((3, 'Suzuka Nakamoto'))
priorityQueue.put((0, 'Moa Kikuchi'))
priorityQueue.put((5, 'Yui Mizuno'))
priorityQueue.put((8, 'Ayaka Sasaki'))

print("<<priorityQueue.get()>>")
print(priorityQueue.get())
print(priorityQueue.get())
print(priorityQueue.get())
print(priorityQueue.get())
print(priorityQueue.get())

