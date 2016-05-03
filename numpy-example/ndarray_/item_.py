#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.arange(1, 7).reshape(2, 3) >>")
ndarr_0 = np.arange(1, 7).reshape(2, 3)
print(ndarr_0)
print("<< ndarr_0.item(3) >>")
print(ndarr_0.item(3))
print("<< ndarr_0.item(0, 1) >>")
print(ndarr_0.item(0, 1))
print("-"*80)
