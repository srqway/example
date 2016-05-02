#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< np.any([[True, False], [True, True]]) >>")
print(np.any([[True, False], [True, True]]))
print("<< np.any([[True, False], [False, False]], axis=0) >>")
print(np.any([[True, False], [False, False]], axis=0))
print("<< np.any([-1, 0, 5]) >>")
print(np.any([-1, 0, 5]))
print("<< np.any(np.nan) >>")
print(np.any(np.nan))
print("-"*80)
