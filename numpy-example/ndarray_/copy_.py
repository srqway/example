#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([[1,2,3],[4,5,6]], order='F') >>")
ndarr_0 = np.array([[1,2,3],[4,5,6]], order='F')
print(ndarr_0)
print("<< ndarr_1 = ndarr_0.copy() >>")
ndarr_1 = ndarr_0.copy()
print(ndarr_1)
print("-"*80)
