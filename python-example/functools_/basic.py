#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import functools

print("<<functools.reduce(lambda x, y : x+y, [1,2])>>")
reduce_0 = functools.reduce(lambda x, y : x+y, [1,2])
print(reduce_0)

print("<<functools.partial(int, base=2)>>")
int2 = functools.partial(int, base=2)
print(int2('100'))

print("<<functools.partial(max, 10)>>")
max10 = functools.partial(max, 10)
print(max10(1, 2, 3))
