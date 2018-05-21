#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

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


