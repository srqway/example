#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.array([[0, 1], [0, 5]]) >>")
ndarr_0 = np.array([[0, 1], [0, 5]])
print(ndarr_0)
print("<< np.sum(ndarr_0) >>")
print(np.sum(ndarr_0))
print("<< np.sum(ndarr_0, axis=0) >>")
print(np.sum(ndarr_0, axis=0))
print("-"*80)
