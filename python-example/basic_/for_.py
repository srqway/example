#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function
import re

print("<<for i, n in enumerate([1, 3, 5]):>>")
for (i, n) in enumerate([1, 3, 5]):
    print(i, n)

print("<<for (name, sex) in zip(names, sexes):>>")
names_0 = ["John", "Marry", "Tom"]
sexes_0 = ["Male", "Female", "Male"]
for (name, sex) in zip(names_0, sexes_0):
    print(name, sex)

print("<<[x for x in xrange(n)]>>")   
print([x for x in xrange(n)])
