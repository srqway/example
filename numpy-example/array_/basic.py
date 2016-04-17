#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<<show types>>")
print(np.typeDict.values())

print("<<one-dimension array>>")
arr_0 = np.array([1, 2, 3])
print(arr_0)

print("<<multi-dimension array>>")
arr_1 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
print(arr_1)

print("<<shape>>")
arr_2 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
print(arr_2.shape)

print("<<change shape>>")
arr_3 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
arr_3.shape = (3,-1)
print(arr_3)

print("<<create array>>")
arr_4 = np.arange(0, 1, 0.1)
print(arr_4)

print("<<return evenly spaced numbers>>")
arr_5 = np.linspace(0, 1, 10)
print(arr_5)

print("<<return numbers spaced evenly on a log scale>>")
arr_6 = np.logspace(0, 1, 5)
print(arr_6)

print("<<empty>>")
arr_7 = np.empty((2, 3))
print(arr_7)

print("<<zeros>>")
arr_8 = np.zeros((2, 3))
print(arr_8)

print("<<ones>>")
arr_9 = np.ones((2, 3))
print(arr_9)

print("<<fromstring>>")
arr_10 = np.fromstring("abcde", np.int8)
print(arr_10)

print("<<fromfunction>>")
def fromfunction(i, j):
    return i * j
arr_11 = np.fromfunction(fromfunction, (9, 9))
print(arr_11)

print("<<skip get elements>>")
arr_12 = np.arange(10)
print(arr_12[1:-1:2])

print("<<get revert elements>>")
arr_13 = np.arange(10)
print(arr_13[::-1])

print("<<get elements by array>>")
arr_13 = np.arange(10)
print(arr_13[np.array([True, False, False, True])])

print("<<get elements > 5>>")
arr_14 = np.arange(10)
print(arr_14[arr_14 > 5])

print("<<skip get elements by slice>>")
arr_15 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
idx_15 = slice(None, None, 2), slice(2, None)
print(arr_15)
print(arr_15[idx_15])

print("<<skip get elements by np.s_>>")
arr_16 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
idx_16 = np.s_[::2], np.s_[2:]
print(arr_16)
print(arr_16[idx_16])

print("<<skip get elements by tuple>>")
arr_17 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]])
print(arr_17)
print(arr_17[(0, 1, 2), (0, 1, 2)])
