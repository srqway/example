#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import itertools

print("<<groupby>>")
first_letter = lambda x: x[0]
strings = ['a_0', 'a_1', 'b_0', 'c_0', 'c_1', 'c_2']
for letter, strs in itertools.groupby(strings, first_letter):
    print(letter, list(strs))

