#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([[0, 1], [2, 3]], order='C') >>")
ndarr_0 = np.array([[0, 1], [2, 3]])
print(ndarr_0)
print("<< ndarr_0.resize((2, 1) >>")
ndarr_0.resize((2, 1))
print(ndarr_0)
ndarr_1 = np.array([[0, 1], [2, 3]])
print(ndarr_1)
print("<< ndarr_1.resize((2, 3) >>")
ndarr_1.resize((2, 3))
print(ndarr_1)

print("-"*80)
