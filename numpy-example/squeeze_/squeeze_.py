#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([[[0], [1], [2]]]) >>")
ndarr_0 = np.array([[[0], [1], [2]]])
print(ndarr_0)
print("<< ndarr_1 = np.squeeze(ndarr_0) >>")
ndarr_1 = np.squeeze(ndarr_0)
print(ndarr_1)
print("<< ndarr_2 = np.squeeze(ndarr_0, axis=(2,)) >>")
ndarr_2 = np.squeeze(ndarr_0, axis=(2,))
print(ndarr_2)
print("-"*80)
