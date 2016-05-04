#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([[1,2,3]]) >>")
ndarr_0 = np.array([[1,2,3]])
print(ndarr_0)
print("<< np.swapaxes(ndarr_0,0,1) >>")
print(np.swapaxes(ndarr_0, 0, 1))
print("-"*80)
