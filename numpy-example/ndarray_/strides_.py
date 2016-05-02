#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.reshape(np.arange(2*3*4), (2,3,4)) >>")
ndarr_0 = np.reshape(np.arange(2*3*4), (2,3,4))
print(ndarr_0)
print("<< ndarr_0.strides >>")
print(ndarr_0.strides)
print("-"*80)
