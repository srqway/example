#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import mimetypes
import os

print("<<guess_type>>")
for f in os.listdir("/tmp/"):
    print("file : %s; type : %s" % (f, mimetypes.guess_type(f)))
