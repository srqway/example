#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function
import collections

print("<<tuple slice:>>")
x_0 = "one", "two", "three", "four", "five"
print(x_0[-4: -2])

print("<<tuple +:>>")
x_1_0 = "one", "two", "three", "four", "five"
x_1_1 = "six", "seven"
print(x_1_0 + x_1_1)

print("<<tuple assign value:>>")
x_2_0, x_2_1, x_2_2 = "one", "two", "three"
print("{x_2_0} {x_2_1} {x_2_2}".format(**locals()))

print("<<named tuple:>>")
MyTuple = collections.namedtuple("MyTuple", "var_0 var_1 var_2")
myTuple = MyTuple(123, "abc", 4.56)
print("{0} {1} {2}".format(myTuple.var_0, myTuple.var_1, myTuple.var_2))
print("{var_0} {var_1} {var_2}".format(**myTuple._asdict()))
