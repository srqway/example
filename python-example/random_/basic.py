#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import random
import string

print("<<random>>")
print(random.random())

print("<<uniform>>")
print(random.uniform(0, 1))

print("<<choice>>")
print(random.choice(string.ascii_lowercase))

print("<<shuffle>>")
arr_0 = [0, 1, 2, 3, 4, 5]
random.shuffle(arr_0)
print(arr_0)

print("<<sample>>")
arr_1 = [0, 1, 2, 3, 4, 5]
print(random.sample(arr_1, 3))

print("<<randrange>>")
print(random.randrange(10))


