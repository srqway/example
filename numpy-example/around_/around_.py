#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = [12.34, 56.78] >>")
ndarr_0 = [12.34, 56.78]
print(ndarr_0)
print("<< np.around(ndarr_0) >>")
print(np.around(ndarr_0))
print("<< np.around(ndarr_0, decimals=1) >>")
print(np.around(ndarr_0, decimals=1))
print("<< np.around(ndarr_0, decimals=-1) >>")
print(np.around(ndarr_0, decimals=-1))
print("-"*80)
