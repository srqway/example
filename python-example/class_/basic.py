#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function


print("<<basic function>>")
class Class_0:
    """
    class document
    """
    def __init__(self, x):
        self.x = x
    def function_0(self):
        return self.x;
print(Class_0(3).function_0())

print("<<class variable & instance variable>>")
class Class_1:
    class_variable = [];
    def __init__(self, x):
        self.instance_variable = x;
class_1_0 = Class_1(0)
class_1_1 = Class_1(1)
class_1_0.class_variable.extend([2])
print("class_1_0.class_variable = " + str(class_1_0.class_variable) + "; class_1_0.instance_variable = " + str(class_1_0.instance_variable))
print("class_1_1.class_variable = " + str(class_1_1.class_variable) + "; class_1_1.instance_variable = " + str(class_1_1.instance_variable))

print("<<dynamic function>>")
class Class_2:
    def function_0(self):
        pass
class_2_0 = Class_2()
class_2_0.function_0 = sorted
class_2_0.function_1 = sum
print(class_2_0.function_0([1, 5, 3, 2, 4]))
print(class_2_0.function_1([1, 5, 3, 2, 4]))

print("<<inheritance>>")
class Parent_0:
    parentName = "parent_0"
    def getParentName(self):
        return self.parentName

class Child_0(Parent_0):
    childName = "child_0"
    def getChildName(self):
        return Parent_0.getParentName(self) + "_" + self.childName

child_0 = Child_0()
print("parent name = " + child_0.getParentName() + "; child name = " + child_0.getChildName())

print("<<inner class>>")
class Outer_0:
    name = "Outer_0"
    def getName(self):
        return self.name

    class Inner_0():
        name = "Inner_0"
        def getName(self):
            return self.name

print("Inner_0 name = " + Outer_0().Inner_0().getName())

print("<<multi inheritance>>")
class Parent_1_0:
    parentName = "Parent_1_0"
    def getParentName(self):
        return self.parentName

class Parent_1_1:
    parentName = "Parent_1_1"
    def getParentName(self):
        return self.parentName

class Child_1(Parent_1_0, Parent_1_1):
    childName = "child_1"
    def getChildName(self):
        return "parent : " + Parent_1_0.getParentName(self) + " & " + Parent_1_1.getParentName(self) + "; child : " + self.childName

child_1 = Child_1()
print("parent name = " + child_1.getParentName() + "; child name = " + child_1.getChildName())

print("<<override>>")
class Parent_2:
    name = "Parent_2"
    def getName(self):
        return self.name

class Child_2(Parent_2):
    name = "Child_2"
    def getName(self):
        return self.name

child_2 = Child_2()
print("name = " + child_2.getName())

print("<<private variable & method>>")
class Parent_3:
    __class_variable = 3;
    def __init__(self, x):
        self.__instance_variable = x;
    def __method(self):
        pass

class Child_3(Parent_3):
    def getClassVariable(self):
        return self.__class_variable
    def getInstanceVariable(self):
        return self.__instance_variable
    def getMethod(self):
        return self.__method()

child_3 = Child_3(1)
try:
    print(child_3.getClassVariable())
except AttributeError:
    print("Child_3 instance has no attribute _Child_3__class_variable")
try:
    print(child_3.getInstanceVariable())
except AttributeError:
    print("Child_3 instance has no attribute _Child_3__instance_variable")
try:
    print(child_3.getMethod())
except AttributeError:
    print("Child_3 instance has no attribute _Child_3__method")
