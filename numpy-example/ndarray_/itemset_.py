#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.arange(1, 7).reshape(2, 3) >>")
ndarr_0 = np.arange(1, 7).reshape(2, 3)
print(ndarr_0)
print("<< ndarr_0.itemset(4, 0) >>")
ndarr_0.itemset(4, 0)
print(ndarr_0)
print("<< ndarr_0.itemset(0, 1) >>")
ndarr_0.itemset((0, 1), 0)
print(ndarr_0)
print("-"*80)
