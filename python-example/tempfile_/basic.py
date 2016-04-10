#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import tempfile

print("<<mktemp>>")
tf = tempfile.mktemp()
print(tf)

print("<<write to temp file>>")
with open(tf, "w") as f:
    for i in range(10):
        f.writelines("%d" % (i))
print("done.")