#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = [1,2,3,4,5] >>")
ndarr_0 = [1,2,3,4,5]
print(ndarr_0)
print("<< np.searchsorted(ndarr_0, 3) >>")
print(np.searchsorted(ndarr_0, 3))
print("<< np.searchsorted(ndarr_0, [-10, 10, 2, 3]) >>")
print(np.searchsorted(ndarr_0, [-10, 10, 2, 3]))
print("-"*80)
