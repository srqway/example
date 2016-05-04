#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.eye(2) >>")
ndarr_0 = np.arange(0, 9).reshape(3, 3)
print(ndarr_0)
print("<< ndarr_0.flags >>")
print(ndarr_0.flags)
print("<< ndarr_0.setflags(write=0, align=0) >>")
ndarr_0.setflags(write=0, align=0)
print(ndarr_0.flags)
print("-"*80)
