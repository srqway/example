#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function
from __builtin__ import str

_is = input("please input number : (0-1)")

print(type(_is))

_is = str(_is)

print(type(_is))

num_0 = [
    "  00  ",
    "00  00",
    "00  00",
    "  00  "
]
num_1 = [
    "  00  ",
    "  00  ",
    "  00  ",
    "  00  "
]
num_arr = [ num_0, num_1]
for j in [0, 1, 2, 3]:
    for i in _is:
        if(i == "0"):
            print(num_0[j], end=' ')
        if(i == "1"):
            print(num_1[j], end=' ')
    print()