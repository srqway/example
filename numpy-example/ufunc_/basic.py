#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<<add>>")
arr_0_0 = np.arange(13, 23)
arr_0_1 = np.arange(3, 13)
print(np.add(arr_0_0, arr_0_1))

print("<<subtract>>")
arr_1_0 = np.arange(13, 23)
arr_1_1 = np.arange(3, 13)
print(np.subtract(arr_1_0, arr_1_1))

print("<<multiply>>")
arr_2_0 = np.arange(13, 23)
arr_2_1 = np.arange(3, 13)
print(np.multiply(arr_2_0, arr_2_1))

print("<<divide>>")
arr_3_0 = np.arange(13, 23)
arr_3_1 = np.arange(3, 13)
print(np.divide(arr_3_0, arr_3_1))

print("<<true_divide>>")
arr_4_0 = np.arange(13, 23)
arr_4_1 = np.arange(3, 13)
print(np.true_divide(arr_4_0, arr_4_1))

print("<<floor_divide>>")
arr_5_0 = np.arange(13, 23)
arr_5_1 = np.arange(3, 13)
print(np.floor_divide(arr_5_0, arr_5_1))

print("<<negative>>")
arr_6_0 = np.arange(13, 23)
print(np.negative(arr_6_0))

print("<<power>>")
arr_7_0 = np.arange(13, 23)
arr_7_1 = np.arange(3, 13)
print(np.power(arr_7_0, arr_7_1))

print("<<remainder>>")
arr_8_0 = np.arange(13, 23)
arr_8_1 = np.arange(3, 13)
print(np.remainder(arr_8_0, arr_8_1))

print("<<equal>>")
arr_9_0 = np.arange(0, 5)[::-1]
arr_9_1 = np.arange(0, 5)
print(np.equal(arr_9_0, arr_9_1))

print("<<not_equal>>")
arr_10_0 = np.arange(0, 5)[::-1]
arr_10_1 = np.arange(0, 5)
print(np.not_equal(arr_10_0, arr_10_1))

print("<<less>>")
arr_11_0 = np.arange(0, 5)[::-1]
arr_11_1 = np.arange(0, 5)
print(np.less(arr_11_0, arr_11_1))

print("<<less_equal>>")
arr_12_0 = np.arange(0, 5)[::-1]
arr_12_1 = np.arange(0, 5)
print(np.less_equal(arr_12_0, arr_12_1))

print("<<greater>>")
arr_13_0 = np.arange(0, 5)[::-1]
arr_13_1 = np.arange(0, 5)
print(np.greater(arr_13_0, arr_13_1))

print("<<greater_equal>>")
arr_14_0 = np.arange(0, 5)[::-1]
arr_14_1 = np.arange(0, 5)
print(np.greater_equal(arr_14_0, arr_14_1))

print("<<any>>")
arr_15_0 = np.arange(0, 5)[::-1]
arr_15_1 = np.arange(0, 5)
print(np.any(arr_15_0 > arr_15_1) and np.any(arr_15_0 < arr_15_1))

print("<<customized ufunc>>")
def function_16(x, y, z):
    return x + y + z
ufunc_16 = np.vectorize(function_16, otypes=[np.int])
print(ufunc_16(1, 2, 3))

print("<<ogrid>>")
x_17, y_17 = np.ogrid[:5, :5]
print(x_17)
print(y_17)

print("<<ix_>>")
x_18 = np.array([1, 2, 3])
y_18 = np.array([4, 5, 6])
gx_18, gy_18 = np.ix_(x_18, y_18)
print(gx_18)
print(gy_18)
print(gx_18 + gy_18)

print("<<reduce>>")
print(np.add.reduce([1, 2, 3]))

print("<<accumulate>>")
print(np.add.accumulate([1, 2, 3]))





