#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import shutil

print("<<copy>>")
shutil.copy("/tmp/.X0-lock", "/tmp/shutil_copy")
print("done.")

print("<<copystat>>")
shutil.copystat("/tmp/.X0-lock", "/tmp/shutil_copy")
print("done.")


