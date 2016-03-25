#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import codecs

with codecs.open("../codecs", "rb", "utf-8") as f:
    for line in f:
        print(line)