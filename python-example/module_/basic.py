#!/usr/bin/python
# -*- coding: utf-8 -*-

import module_.example.module_0
from module_.example.module_0 import function_1

print("<<show all functions>>")
print(dir(module_.example.module_0))

print("<<call function_0>>")
module_.example.module_0.function_0()

print("<<call function_1>>")
function_1()

print("<<help>>")
help(module_.example.module_0)
