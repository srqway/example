#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< arr_1, arr_2 = np.meshgrid(arr_0, arr_0) >>")
arr_0=[
[0,1,2],
[3,4,5],
[6,7,8]    
]
arr_1, arr_2 = np.meshgrid(arr_0, arr_0)
print("arr_1 :")
print(arr_1)
print("arr_2 :")
print(arr_2)

