#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

print("<<[n_0 + str(n_1) for n_0 in numbers_0_0 for n_1 in numbers_0_1 if n_1 % 2 == 0]:>>")
numbers_0_0 = ["a", "b", "c"]
numbers_0_1 = [1, 2, 3, 4, 5]
list_0 = [n_0 + str(n_1) for n_0 in numbers_0_0 for n_1 in numbers_0_1 if n_1 % 2 == 0]
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

print("<<list assign value>>")
list_5_0, *list_5_middle, list_5_4 = [1, 2, 3, 4, 5]
print("{} {} {}".format(list_5_0, list_5_middle, list_5_4))

print("<<starred argument>>")
list_6 = [1, 2, 3, 4, 5]
print(*list_6)

print("<<skipped replace>>")
list_7 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
list_7[1::2] = [0] * len(list_7[1::2])
print(*list_7)
