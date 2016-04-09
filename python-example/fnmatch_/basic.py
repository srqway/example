#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import fnmatch
import os

print("<<fnmatch>>")
for f in os.listdir("../"):
    if fnmatch.fnmatch(f, "*c*"):
        print(f)
