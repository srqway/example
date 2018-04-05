#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import collections

print("<< collections.Counter([0, 1, 2, 0]): >>")
x_0 = collections.Counter([0, 1, 2, 0])    
print(x_0)

print("<< collections.Counter([0, 0, 0, 1, 1, 2]): >>")
x_1 = collections.Counter([0, 0, 0, 1, 1, 2])  
for word, count in x_1.most_common(2):
    print(word, count)
 
print("<< collections.defaultdict(int): >>")
x_0 = collections.defaultdict(int)
print(x_0["not exist"])

print("<< collections.defaultdict(lambda : -1): >>")
x_2 = collections.defaultdict(lambda : -1)
print(x_2["not exist"])

print("<< collections.defaultdict(int): >>")
x_0 = collections.OrderedDict()
x_0["two"] = "2"
x_0["one"] = "1"
x_0["zero"] = "0"
print(x_0)

print("<<named tuple:>>")
MyTuple = collections.namedtuple("MyTuple", "var_0 var_1 var_2")
myTuple = MyTuple(123, "abc", 4.56)
print("{0} {1} {2}".format(myTuple.var_0, myTuple.var_1, myTuple.var_2))
print("{var_0} {var_1} {var_2}".format(**myTuple._asdict()))

print("<<sorted(collections.Counter([0, 0, 0, 1, 1, 2]).items(), key=lambda dict: print(dict[0]), reverse=True)>>")
print(sorted(collections.Counter([0, 0, 0, 1, 1, 2]).items(), key=lambda dict: dict[1], reverse=True))
  

