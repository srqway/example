#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import abc


print("<<abstract class>>")
class AbstractClass(abc.ABC):
    @abc.abstractmethod
    def function_0(self):
        return NotImplemented

    @abc.abstractmethod
    def function_1(self, x, y):
        return NotImplemented

class Clazz(AbstractClass):
    def function_0(self):
        return "this is function_0"

    def function_1(self, x, y):
        print("this is function_1 : x(%s), y(%s)" % (x, y))

clazz = Clazz()
print(clazz.function_0())
clazz.function_1("X", "Y")
