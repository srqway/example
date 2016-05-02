#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.eye(2) >>")
ndarr_0 = np.eye(2)
print(ndarr_0)
print("<< ndarr_1 = np.ones((2, 2)) * 2 >>")
ndarr_1 = np.ones((2, 2)) * 2
print(ndarr_1)
print("<< ndarr_0.dot(ndarr_1) >>")
print(ndarr_0.dot(ndarr_1))
print("-"*80)
