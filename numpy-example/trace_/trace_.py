#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.arange(1, 7).reshape(2, 3) >>")
ndarr_0 = np.arange(0, 9).reshape(3, 3)
print(ndarr_0)
print("<< np.trace(ndarr_0) >>")
print(np.trace(ndarr_0))


print("<< ndarr_1 = np.arange(8).reshape((2,2,2)) >>")
ndarr_1 = np.arange(8).reshape((2,2,2))
print(ndarr_1)
print("<< np.trace(ndarr_1) >>")
print(np.trace(ndarr_1))

print("-"*80)
