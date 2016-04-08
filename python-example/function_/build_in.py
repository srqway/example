#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

print("<<dir>>")
print(dir("string"))

print("<<type>>")
print(type("string"))

print("<<isinstance>>")
class Obj_0:
    def __init__(self):
        pass

print(isinstance(Obj_0(), Obj_0))

print("<<issubclass>>")
class Obj_1_0:
    def __init__(self):
        pass

class Obj_1_1(Obj_1_0):
    def __init__(self):
        pass

print(issubclass(Obj_1_1, Obj_1_0))

print("<<id>>")
class Obj_2_0:
    def __init__(self):
        pass

print(id(Obj_2_0()))
