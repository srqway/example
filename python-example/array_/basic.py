#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import array

print("<<create array>>")
arr = array.array("i", [1, 2, 3])
print(arr)

print("<<append array>>")
arr.append(4)
print(arr)

print("<<extend array>>")
arr.extend([5, 6])
print(arr)

print("<<remove array>>")
arr.remove(3)
print(arr)

print("<<reverse array>>")
arr.reverse()
print(arr)
