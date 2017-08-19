#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<for i, n in enumerate([1, 3, 5]):>>")
numbers_0 = [1, 2, 3, 4, 5]
list_0 = [n * 3 + 1 for n in numbers_0 if n % 2 == 0]
print(list_0)

print("<<list add item>>")
list_1 = [1, 2, 3]
list_1 += [4]
print(list_1)

print("<<get list item>>")
list_2 = [1, 2, 3]
print(list_2[-1])

print("<<get list items>>")
list_3 = [1, 2, 3, 4, 5]
print(list_3[-3:-2])

print("<<get list items with step>>")
list_3 = [1, 2, 3, 4, 5]
print(list_3[-5:-1:2])

print("<<get list items with slice>>")
list_3 = [1, 2, 3, 4, 5]
print(list_3[-4::2])

print("<<join list>>")
list_4 = ["one", "two", "three"]
print("|".join(list_4))

