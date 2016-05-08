#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([[1,2], [3,4]]) >>")
ndarr_0 = np.array([[1,2], [3,4]])
print(ndarr_0)
print("<< ndarr_0.flatten() >>")
print(ndarr_0.flatten())
print("<< ndarr_0.flatten('F') >>")
print(ndarr_0.flatten('F'))
print("-"*80)
