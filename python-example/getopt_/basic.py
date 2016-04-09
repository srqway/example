#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import getopt

print("<<getopt>>")
args = "-i 127.0.0.1 -p 80 --help --param=abc test.py".split()
opt, prog = getopt.getopt(args, "i:p:", ["help", "param="])
print("opt : %s" % opt)
print("prog : %s" % prog)

