#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division
import functools

print("<<function_0>>")
def function_0(x_0):
    return x_0;
print(function_0(3))

print("<<function_1>>")
def function_1():
    """
    function document
    """
print(function_1.__doc__)


print("<<function_2>>")
x_2 = [1,2,3]
def function_2(x_2):
    x_2 = [4,5,6]
    print(x_2)
function_2(x_2)
print(x_2)

print("<<function_3>>")
x_3 = [1,2,3]
def function_3():
    global x_3
    x_3 = [4,5,6]
    print(x_3)
function_3()
print(x_3)

print("<<function_4>>")
def function_4(x=None):
    if x == None:
        print("not input")
function_4()

print("<<function_5>>")
def function_5(*xs):
    total = 0
    for x in xs:
        total += x
    return total
print(function_5(1,2,3,4,5))

print("<<function_6>>")
def function_6(**xs):
    for x in xs:
        print(x + ":" + xs[x])
function_6(a="A", b="B", c="C")

print("<<function_7>>")
function_7 = (lambda x,y,z : x+y+z)
print(function_7(1,2,3))

print("<<function_8>>")
result_8 = filter(lambda x : x%2==0, [1,2,3,4,5])
print(result_8)

print("<<function_9>>")
result_9 = map(lambda x,y : x+y, [1,2,3],[4,5,6])
print(result_9)

print("<<function_10>>")
result_10 = functools.reduce(lambda x, y : x+y, [1,2])
print(result_10)

print("<<function_11>>")
def function_11_outer(a):
    def function_11_inner(x):
        return x + 1
    print(function_11_inner(1))
function_11_outer(1)

print("<<function_12>>")
def function_12(position_var_0, position_var_1, position_var_2, *, name_var_0, name_var_1, name_var_2):
    print(position_var_0 + ":" + position_var_0)
    print(position_var_1 + ":" + position_var_1)
    print(position_var_2 + ":" + position_var_2)
    print(name_var_0 + ":" + name_var_0)
    print(name_var_1 + ":" + name_var_1)
    print(name_var_2 + ":" + name_var_2)
function_12("pos_0", "pos_1", "pos_2", name_var_0="name_0", name_var_1="name_1", name_var_2="name_2")

