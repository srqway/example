#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.arange(1, 7) >>")
ndarr_0 = np.arange(1, 7)
print(ndarr_0)
print("<< np.take(ndarr_0, [1, 2, 4]) >>")
print(np.take(ndarr_0, [0, 2, 4]))
print("<< np.take(ndarr_0, [[0, 1], [2, 3]]) >>")
print(np.take(ndarr_0, [[0, 1], [2, 3]]))
print("-"*80)
