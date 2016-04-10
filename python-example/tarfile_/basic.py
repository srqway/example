#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import tarfile

print("<<compress>>")
with tarfile.open("/tmp/tarfile.tar.gz", mode = "a") as tarF:
    for f in ["/etc/passwd", "/etc/shells"]:
        tarF.add(f)
print("compress done.")

print("<<decompress>>")
with tarfile.open("/tmp/tarfile.tar.gz", mode = "r") as tarF:
    tarF.extractall("/tmp/tarfile")
print("decompress done.")

