#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

from datetime import datetime

now = datetime.now()

print("<<strftime>>")
print(now.strftime("%Y/%m/%d %H:%M:%S"))

print("<<strftime>>")
date_0 = now.date()
time_0 = now.time()
print(datetime.combine(date_0, time_0))
