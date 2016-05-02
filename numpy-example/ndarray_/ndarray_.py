#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< np.ndarray((2,), buffer=np.array([1,2,3]), offset=np.int_().itemsize, dtype=int) >>")
ndarr_0 = np.ndarray((2,), buffer=np.array([1,2,3]), offset=np.int_().itemsize, dtype=int)
print(ndarr_0)
print("-"*80)

