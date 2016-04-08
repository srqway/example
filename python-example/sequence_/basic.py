#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

print("<<sequence_0>>")
x_0 = [1,2,3]
y_0 = [1,2,3]
print(x_0 == y_0)

print("<<sequence_1>>")
x_1 = [1,2,3]
print(2 * x_1)

print("<<sequence_2>>")
x_2 = [
    [1,2,3],
    [4,5,6]
]
print(x_2)

print("<<sequence_3>>")
x_3 = ["aaa", "bbb", "ccc"]
print(x_3.count("aaa"))

print("<<sequence_4>>")
x_4 = ["aaa", "bbb", "ccc"]
print(x_4.index("bbb"))

print("<<sequence_5>>")
x_5 = ["aaa", "bbb", "ccc"]
x_5.insert(1, "xxx")
print(x_5)

print("<<sequence_6>>")
x_6 = ["aaa", "bbb", "ccc"]
print(x_6.pop())
print(x_6)

print("<<sequence_7>>")
x_7 = ["aaa", "bbb", "ccc"]
x_7.remove("bbb")
print(x_7)

print("<<sequence_8>>")
x_8 = ["aaa", "bbb", "ccc"]
x_8.reverse()
print(x_8)

