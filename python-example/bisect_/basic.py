#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import bisect

print("<<insort>>")
arr_0 = [10, 20, 30]
bisect.insort(arr_0, 25)
print(arr_0)

print("<<bisect>>")
arr_0 = [10, 20, 30]
print("index : %d" % (bisect.bisect(arr_0, 25)))
print(arr_0)
