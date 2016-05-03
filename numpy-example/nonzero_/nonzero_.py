#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<< ndarr_0 = np.eye(3) >>")
ndarr_0 = np.eye(3)
print(ndarr_0)
print("<< np.nonzero(ndarr_0) >>")
print(np.nonzero(ndarr_0))
print("<< ndarr_0[np.nonzero(ndarr_0)] >>")
print(ndarr_0[np.nonzero(ndarr_0)])
print("-"*80)
