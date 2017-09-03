#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<while True>>")
x_0 = 0
while True:
    print(x_0)
    x_0 += 1
    if x_0 > 3:
        break
    else:
        continue
    
print("<<while else>>")
x_1 = 0
while x_1 < 3:
    print(x_1)
    x_1 += 1
else:
    print("exit while")