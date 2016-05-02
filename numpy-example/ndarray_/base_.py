#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([1,2,3,4]) >>")
ndarr_0 = np.array([1,2,3,4])
print(ndarr_0.base)
print("<< ndarr_1 = ndarr_0[2:] >>")
ndarr_1 = ndarr_0[2:]
print(ndarr_1)
print("<< ndarr_1.base >>")
print(ndarr_1.base)
print("-"*80)
