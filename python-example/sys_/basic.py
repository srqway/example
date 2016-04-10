#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import sys

print("<<platform>>")
print(sys.platform)

print("<<version_info>>")
print(sys.version_info)

print("<<subversion>>")
print(sys.subversion)

print("<<byteorder>>")
print(sys.byteorder)

print("<<path>>")
print(sys.path)

print("<<argv>>")
print(sys.argv)

print("<<builtin_module_names>>")
print("sys" in sys.builtin_module_names)

print("<<modules.keys>>")
print(sys.modules.keys())

print("<<exit>>")
print(sys.exit(0))

