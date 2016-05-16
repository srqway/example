#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<for i, n in enumerate([1, 3, 5]):>>")
numbers_0 = [1, 2, 3, 4, 5]
list_0 = [n * 3 + 1 for n in numbers_0 if n % 2 == 0]
print(list_0)

