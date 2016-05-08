#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.arange(5) >>")
ndarr_0 = np.arange(5)
print(ndarr_0)
print("<< np.put(ndarr_0, [0, 2], [-44, -55]) >>")
np.put(ndarr_0, [0, 2], [-44, -55])
print(ndarr_0)
print("<< np.put(ndarr_0, 22, -5, mode='clip') >>")
np.put(ndarr_0, 22, -5, mode='clip')
print(ndarr_0)
print("-"*80)
