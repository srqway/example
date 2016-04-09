#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import gzip

print("<<create>>")
with gzip.open("/tmp/gzip.gz", "wb") as file_0_0:
    file_0_0.write("ascii & 中文")

with gzip.open("/tmp/gzip.gz", "rb") as file_0_1:
    print(file_0_1.read())
    
print("<<append>>")
with gzip.open("/tmp/gzip.gz", "ab") as file_1_0:
    file_1_0.writelines("ascii & 中文")

with gzip.open("/tmp/gzip.gz", "rb") as file_1_1:
    print(file_1_1.read())
