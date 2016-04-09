#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import binascii

print("<<b2a_hex>>")
text_0 = "中文"
b2a_hex = binascii.b2a_hex(text_0)
print(b2a_hex)

print("<<a2b_hex>>")
a2b_hex = binascii.a2b_hex(b2a_hex)
print(a2b_hex)

