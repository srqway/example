#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

print("<<unicode>>")
ascii = "ascii"
print(str(type(ascii)) + " : " + ascii)

unicode_0 = u"unicode_0"
print(str(type(unicode_0)) + " : " + unicode_0)

unicode_1 = unicode("unicode_1")
print(str(type(unicode_1)) + " : " + unicode_1)

chinese_0 = "ascii & 中文"
print(str(type(chinese_0)) + " : " + chinese_0)

chinese_1 = unicode("ascii & 中文", "utf-8")
print(str(type(chinese_1)) + " : " + chinese_1)

chinese_2 = u"ascii & \u4e2d\u6587"
print(str(type(chinese_2)) + " : " + chinese_2)

print("ignore errors : " + unicode("\x80abc", errors="ignore"))
print("replace errors : " + unicode("\x80abc", errors="replace"))

print("<<raw unicode escape encoding>>")
print(u"\\regex" + " : " + ur"\\regex")
