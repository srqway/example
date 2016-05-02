#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([3, 1, 2]) >>")
ndarr_0 = np.array([3, 1, 2])
print(ndarr_0)
print("<< np.argsort(ndarr_0) >>")
print(np.argsort(ndarr_0))

print("<< ndarr_1 = np.array([[0, 3], [2, 2]]) >>")
ndarr_1 = np.array([[0, 3], [2, 2]])
print(ndarr_1)
print("<< np.argsort(ndarr_1, axis=0) >>")
print(np.argsort(ndarr_1, axis=0))


print("-"*80)
