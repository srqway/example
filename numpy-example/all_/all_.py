#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< np.all([[True,False],[True,True]]) >>")
print(np.all([[True,False],[True,True]]))
print("<< np.all([[True,False],[True,True]], axis=0) >>")
print(np.all([[True,False],[True,True]], axis=0))
print("<< np.all([-1, 4, 5]) >>")
print(np.all([-1, 4, 5]))
print("<< np.all([1.0, np.nan]) >>")
print(np.all([1.0, np.nan]))
print("-"*80)
