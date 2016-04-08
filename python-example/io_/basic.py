#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<write>>")
with open("../io.txt", "w+") as f:
    for line in range(10):
        f.writelines("%s\n" % (line))
print("finish write")

print("<<read>>")
with open("../io.txt", "r+") as f:
    for line in f:
        print(line)
print("finish read")


