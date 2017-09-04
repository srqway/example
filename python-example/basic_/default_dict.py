#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import collections

print("<< collections.defaultdict(int): >>")
x_0 = collections.defaultdict(int)
print(x_0["not exist"])

print("<< collections.defaultdict(lambda : -1): >>")
x_2 = collections.defaultdict(lambda : -1)
print(x_2["not exist"])
