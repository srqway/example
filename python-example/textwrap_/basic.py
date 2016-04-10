#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import textwrap

text = "wrap123 " * 100

print("<<wrap>>")
wrappedText = textwrap.wrap(text, 30)
for line in wrappedText:
    print(line)

print("<<fill>>")
filledText = textwrap.fill(text, 30)
print(filledText)


