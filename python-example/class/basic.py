#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

print("<<basic function>>")
class class_0:
    """
    class document
    """
    def __init__(self, x):
        self.x = x
    def function_0(self):
        return self.x;
print(class_0(3).function_0())

print("<<class variable & instance variable>>")
class class_1:
    class_variable = [];
    def __init__(self, x):
        self.instance_variable = x;
class_1_0 = class_1(0)
class_1_1 = class_1(1)
class_1_0.class_variable.extend([2])
print("class_1_0.class_variable = " + str(class_1_0.class_variable) + "; class_1_0.instance_variable = " + str(class_1_0.instance_variable))
print("class_1_1.class_variable = " + str(class_1_1.class_variable) + "; class_1_1.instance_variable = " + str(class_1_1.instance_variable))

print("<<dynamic function>>")
class class_2:
    def function_0(self):
        pass
class_2_0 = class_2()
class_2_0.function_0 = sorted
class_2_0.function_1 = sum
print(class_2_0.function_0([1,5,3,2,4]))
print(class_2_0.function_1([1,5,3,2,4]))



