#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<*args, **kwargs>>")


def magic(*args, **kwargs):
    print("unnamed args:", args)
    print("keyword args:", kwargs)


magic(1, 2, key="word", key2="word2")

print("<<*list>>")
list = [0, 1, 2]
print(*list)

print("<<magic(**dict)>>")
dict = {"key": "word", "key2": "word2"}
magic(**dict)

print("<<generator expresssion>>")
generator = (x ** 2 for x in range(100))
print(generator)

