#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<{n_0 + str(n_1) for n_0 in numbers_0_0 for n_1 in numbers_0_1 if n_1 % 2 == 0}:>>")
numbers_0_0 = ["a", "b", "c"]
numbers_0_1 = [1, 2, 3, 4, 5]
set_0 = {n_0 + str(n_1) for n_0 in numbers_0_0 for n_1 in numbers_0_1 if n_1 % 2 == 0}
print(set_0)

print("<<add:>>")
x_0_0 = {0, 1, 2, 3}
x_0_0.add(4)
print(x_0_0)

print("<<difference:>>")
x_1_0 = {0, 1, 2, 3}
x_1_1 = {2, 3, 4, 5}
print(x_1_0 - x_1_1)

print("<<intersection:>>")
x_2_0 = {0, 1, 2, 3}
x_2_1 = {2, 3, 4, 5}
print(x_2_0 & x_2_1)

print("<<issubset:>>")
x_3_0 = {0, 1, 2, 3}
x_3_1 = {1, 2}
print(x_3_1 <= x_3_0)

print("<<issuperset:>>")
x_4_0 = {0, 1, 2, 3}
x_4_1 = {1, 2}
print(x_4_0 >= x_4_1)

print("<<symmetric_difference:>>")
x_5_0 = {0, 1, 2, 3}
x_5_1 = {2, 3, 4, 5}
print(x_5_0 ^ x_5_1)

print("<<union:>>")
x_6_0 = {0, 1, 2, 3}
x_6_1 = {2, 3, 4, 5}
print(x_6_0 | x_6_1)

print("<<frozenset:>>")
x_7 = frozenset({0, 1, 2, 3})
print(x_7)
