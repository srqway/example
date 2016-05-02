#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.arange(6).reshape(2,3) >>")
ndarr_0 = np.arange(6).reshape(2,3)
print(ndarr_0)
print("<< np.argmin(ndarr_0) >>")
print(np.argmin(ndarr_0))
print("<< np.argmin(ndarr_0, axis=0) >>")
print(np.argmin(ndarr_0, axis=0))
print("-"*80)
