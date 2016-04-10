#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import os

print("<<name>>")
print(os.name)

print("<<environ>>")
for key in os.environ:
    print("%s = %s" % (key, os.environ[key]))

print("<<system>>")
print(os.system("touch /tmp/osTest"))

print("<<rename>>")
os.rename("/tmp/osTest", "tmp/newOsTest")

print("listdir")
for fn in os.listdir("/tmp"):
    print(fn)
