#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import base64

print("<<base64_0>>")
text_0 = "中文"
encodedText_0 = base64.encodestring(text_0)
decodedText_0 = base64.decodestring(encodedText_0)
print(decodedText_0)
