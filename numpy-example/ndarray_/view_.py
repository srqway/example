#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([(1, 2)], dtype=[('a', np.int8), ('b', np.int8)]) >>")
ndarr_0 = np.array([(1, 2)], dtype=[('a', np.int8), ('b', np.int8)])
print(ndarr_0)
print("<< ndarr_0.view(dtype=np.int16, type=np.matrix) >>")
print(ndarr_0.view(dtype=np.int16, type=np.matrix))

print("-"*80)
