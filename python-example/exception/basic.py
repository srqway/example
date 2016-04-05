#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<try...except>>")
try:
    arr_0 = ["aaa", "bbb", "ccc"]
    arr_0[3]
except IndexError:
    print("IndexError")
except TypeError:
    print("TypeError")

print("<<try...excepts>>")
try:
    arr_1 = ["aaa", "bbb", "ccc"]
    arr_1[3]
except (IndexError, TypeError):
    print("Error")
    
print("<<try...except, e>>")
try:
    arr_2 = ["aaa", "bbb", "ccc"]
    arr_2[3]
except IndexError, e:
    print(e)    

print("<<try...except...finally>>")
try:
    arr_3 = ["aaa", "bbb", "ccc"]
    arr_3[3]
except IndexError:
    print("except")
finally:
    print("finally")

print("<<try...except...else>>>")
try:
    arr_4 = ["aaa", "bbb", "ccc"]
    arr_4[3]
except IndexError:
    print('except')
else:
    print('else')

print("<<pass>>")
try:
    arr_5 = ["aaa", "bbb", "ccc"]
    arr_5[3]
except IndexError:
    print('pass')
    pass

print("<<raise error>>")
try:
    raise IndexError
except IndexError:
    print("raised error")   
    
print("<<customized exception>>")
class CustomizedException(Exception):
    def __str__(self):
        return "CustomizedException"
    
try:
    raise CustomizedException
except CustomizedException:
    print("customized exception")  

