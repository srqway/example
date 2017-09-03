#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<if elif else>>")
x_0 = 1
if x_0 == 0:
    pass
elif x_0 == 1:
    print("x_0 == 1")
else:
    print("wrong !!!")

print("<<inline if else>>")
x_1_0 = 1
x_1_1 = "zero" if x_0 == 0 else "other"
print(x_1_1)
    
    