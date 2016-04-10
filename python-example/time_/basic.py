#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import time

print("<<localtime>>")
print(time.localtime(time.time()))

print("<<gmtime>>")
print(time.gmtime(time.time()))

print("<<mktime>>")
tuple_0 = (2008, 12, 30, 11, 20, 21, 0, 56, 1)
time_0 = time.mktime(tuple_0)
print(time.localtime(time_0))

print("<<asctime>>")
time_1 = time.localtime(time.time())
print(time.asctime(time_1))

print("<<ctime>>")
time_2 = time.time()
print(time.ctime(time_2))

