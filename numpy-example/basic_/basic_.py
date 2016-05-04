#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import numpy as np

print("<<define struct>>")
struct_0 = np.dtype({"names" : ["name", "age", "weight"],
                     "formats" : ["S32", "i", "f"]},
                    align = True)
arr_0 = np.array([("name 0", 32, 75.5), ("name 1", 24, 63.21)],
                 dtype = struct_0)
print(arr_0)

print("<<show struct info>>")
struct_1 = np.dtype({"names" : ["name", "age", "weight"],
                     "formats" : ["S32", "i", "f"]},
                    align = True)
arr_1 = np.array([("name 0", 32, 75.5), ("name 1", 24, 63.21)],
                 dtype = struct_0)
print(arr_1.dtype)

print("<<save struct to file>>")
struct_2 = np.dtype({"names" : ["name", "age", "weight"],
                     "formats" : ["S32", "i", "f"]},
                    align = True)
arr_2 = np.array([("name 0", 32, 75.5), ("name 1", 24, 63.21)],
                 dtype = struct_0)
arr_2.tofile("/tmp/struct_2")
print(arr_2.dtype)

print("<<flags>>")
struct_3 = np.dtype({"names" : ["name", "age", "weight"],
                     "formats" : ["S32", "i", "f"]},
                    align = True)
arr_3 = np.array([("name 0", 32, 75.5), ("name 1", 24, 63.21)],
                 dtype = struct_0)
print(arr_3.flags)


