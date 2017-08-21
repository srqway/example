#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<create dict:>>")
x_0_0 = dict({"name" : "hsiehpinghan", "age" : 38})
print(x_0_0)
x_0_1 = dict(name = "hsiehpinghan", age = 38)
print(x_0_1)
x_0_2 = dict([("name", "hsiehpinghan"), ("age", 38)])
print(x_0_2)
x_0_3 = dict(zip(("name", "age"), ("hsiehpinghan", 38)))
print(x_0_3)
x_0_4 = {"name" : "hsiehpinghan", "age" : 38}
print(x_0_4)

print("<<dict add value:>>")
x_1 = dict({"name" : "hsiehpinghan", "age" : 38})
x_1["value"] = 123.456
print(x_1)

print("<<dict update value:>>")
x_2= dict({"name" : "hsiehpinghan", "age" : 38})
x_2["age"] = 30
print(x_2)

print("<<dict delete value:>>")
x_3= dict({"name" : "hsiehpinghan", "age" : 38})
del x_3["age"]
print(x_3)

print("<<for d in x_4.items():>>")
x_4= dict({"name" : "hsiehpinghan", "age" : 38})
for d in x_4.items():
    print(d[0], d[1])

print("<<for k, v in x_4.items():>>")
x_5= dict({"name" : "hsiehpinghan", "age" : 38})
for k, v in x_5.items():
    print(k, v)

print("<<update dict values:>>")
x_6= dict({"zero" : 0, "one" : 1, "two" : 2})
for k in x_6:
    x_6[k] += 1
print(x_6)
