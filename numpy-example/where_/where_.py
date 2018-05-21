#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< arr_1=np.where(arr_0 > 5, 1, -1) >>")
arr_0=np.array([
[0,1,2],
[3,4,5],
[6,7,8]    
])
arr_1=np.where(arr_0 < 5, 0, arr_0)
print(arr_1)

