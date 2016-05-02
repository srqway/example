#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([1,2,3]) >>")
ndarr_0 = np.array([1,2,3])
print(ndarr_0)
print("<< np.cumprod(ndarr_0) >>")
print(np.cumprod(ndarr_0))
print("<< ndarr_1 = np.array([[1, 2, 3], [4, 5, 6]]) >>")
ndarr_1 = np.array([[1, 2, 3], [4, 5, 6]])
print(ndarr_1)
print("<< np.cumprod(ndarr_1) >>")
print(np.cumprod(ndarr_1))
print("<< np.cumprod(ndarr_1, axis=0) >>")
print(np.cumprod(ndarr_1, axis=0))
print("-"*80)
