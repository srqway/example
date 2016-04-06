#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division
import locale

print("<<number format>>")
locale.setlocale(locale.LC_ALL, 'en_US.utf8')
print(locale.format("%.3f", (12345.67), grouping=True))
