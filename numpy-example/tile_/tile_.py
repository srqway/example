#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< arr_0 = np.array([0, 1, 2]) >>")
arr_0 = np.array([0, 1, 2])
print(arr_0)
print("<< np.tile(arr_0, 2) >>")
print(np.tile(arr_0, 2))
print("<< np.tile(arr_0, (2, 3)) >>")
print(np.tile(arr_0, (2, 3)))
print("<< np.tile(arr_0, (2, 3, 4)) >>")
print(np.tile(arr_0, (2, 3, 4)))
print("-"*80)

print("<< arr_1 = np.array([[1, 2], [3, 4]]) >>")
arr_1 = np.array([[1, 2], [3, 4]])
print(arr_1)
print("<< np.tile(arr_1, 2) >>")
print(np.tile(arr_1, 2))
print("<< np.tile(arr_1, (2, 3)) >>")
print(np.tile(arr_1, (2, 3)))
print("-"*80)
