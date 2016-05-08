#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.arange(4).reshape((2,2)) >>")
ndarr_0 = np.arange(4).reshape((2,2))
print(ndarr_0)
print("<< np.ptp(ndarr_0) >>")
print(np.ptp(ndarr_0))
print("<< np.ptp(ndarr_0, axis=1) >>")
print(np.ptp(ndarr_0, axis=1))
print("-"*80)
