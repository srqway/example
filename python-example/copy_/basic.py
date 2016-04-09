#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import copy

print("<<copy>>")
arr_0_0 = ["a", "b" ,"c", ["d", "e"]]
arr_0_1 = copy.copy(arr_0_0)
print("arr_0 : %s" % arr_0_0)
print("arr_1 : %s" % arr_0_1)
print("arr_0.append('f')")
arr_0_0.append('f')
print("arr_0 : %s" % arr_0_0)
print("arr_1 : %s" % arr_0_1)
print("arr_0[3].append('g')")
arr_0_0[3].append('g')
print("arr_0 : %s" % arr_0_0)
print("arr_1 : %s" % arr_0_1)

print("<<deepcopy>>")
arr_1_0 = ["a", "b" ,"c", ["d", "e"]]
arr_1_1 = copy.deepcopy(arr_1_0)
print("arr_0 : %s" % arr_1_0)
print("arr_1 : %s" % arr_1_1)
print("arr_0.append('f')")
arr_1_0.append('f')
print("arr_0 : %s" % arr_1_0)
print("arr_1 : %s" % arr_1_1)
print("arr_0[3].append('g')")
arr_1_0[3].append('g')
print("arr_0 : %s" % arr_1_0)
print("arr_1 : %s" % arr_1_1)

