#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([[1,4], [3,1]]) >>")
ndarr_0 = np.array([[1,4], [3,1]])
print(ndarr_0)
print("<< ndarr_0.sort(axis=1) >>")
ndarr_0.sort(axis=1)
print(ndarr_0)


print("<< ndarr_1 = np.array([('a', 2), ('c', 1)], dtype=[('x', 'S1'), ('y', int)]) >>")
ndarr_1 = np.array([('a', 2), ('c', 1)], dtype=[('x', 'S1'), ('y', int)])
print(ndarr_1)
print("<< ndarr_1.sort(order='y') >>")
ndarr_1.sort(order='y')
print(ndarr_1)
print("-"*80)
