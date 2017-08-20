#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import sys
import math
import decimal
import locale

print("<<capitalize>>")
print("capitalize".capitalize())

print("<<center>>")
print("center".center(50))

print("<<count>>")
print("count".count('u'))

print("<<endswith>>")
print("endswith.jpg".endswith("jpg"))

print("<<expandtabs>>")
print("""
|12345\t|
|1234567890\t|
|123456789012345\t|
""".expandtabs(20))

print("<<format>>")
print("{} {}".format("arg0", "arg1"))
print("{0} {1}".format("arg0", "arg1"))
print("{arg0} {arg1}".format(arg0="arg0", arg1="arg1"))
print("|{arg0:10}|".format(arg0="arg0"))
print("|{arg0:{len}}|".format(arg0="arg0", len=10))
print("|{arg0:>10}|".format(arg0="arg0"))
print("|{arg0:^10}|".format(arg0="arg0"))
print("|{arg0:<10}|".format(arg0="arg0"))
print("|{arg0:*>10}|".format(arg0="arg0"))
print("|{arg0:0<10}|".format(arg0="arg0"))
print("|{arg0:.^10}|".format(arg0="arg0"))
print("|{arg0:0=10}|".format(arg0=123))
print("|{arg0:0=10}|".format(arg0=-123))
print("|{arg0:010}|".format(arg0=123))
print("|{arg0:010}|".format(arg0=-123))
print("|{arg0:}, {arg1:}|".format(arg0=123, arg1=-123))
print("|{arg0:+}, {arg1:+}|".format(arg0=123, arg1=-123))
print("|{arg0:-}, {arg1:-}|".format(arg0=123, arg1=-123))
print("{{{arg0}}}".format(arg0="arg0"))
arr = ["one", "two", "three"]
print("1:{0[0]} 2:{0[1]} 3:{0[2]}".format(arr))
dic = dict(first = "one", second = "two", third = "three")
print("1:{0[first]} 2:{0[second]} 3:{0[third]}".format(dic))
print("maxunicode : {0.maxunicode}, pi : {1.pi}".format(sys, math))
var_0 = "var_0"
var_1 = "var_1"
print("var_0 : {var_0}, var_1 : {var_1}".format(**locals()))
print("{0} {0!s} {0!r}".format(decimal.Decimal("123.45")))
print("{arg0:b}, {arg0:o}, {arg0:x}, {arg0:X}".format(arg0=123))
print("{arg0:#b}, {arg0:#o}, {arg0:#x}, {arg0:#X}".format(arg0=123))
print("{arg0:,}".format(arg0=123456))
locale.setlocale(locale.LC_ALL, "")
print("{arg0:n}".format(arg0=123456.789))
locale.setlocale(locale.LC_ALL, "C")
print("{arg0:n}".format(arg0=123456.789))
locale.setlocale(locale.LC_ALL, "en_US.UtF-8")
print("{arg0:n}".format(arg0=123456.789))
locale.setlocale(locale.LC_ALL, "de_DE.UTF-8")
print("{arg0:n}".format(arg0=123456.789))
print("{arg0:12.3f}, {arg0:12.3e}".format(arg0=123456789.123456789))
print("{arg0:12.3f}, {arg0:12.3e}".format(arg0=decimal.Decimal(123456789.123456789)))
print("{arg0:12.3f}".format(arg0=decimal.Decimal(123456789.123456789)))
print("{arg0:12.3f}".format(arg0=1.23-4.56j))

print("<<index>>")
try:
    print("abcde".index("f"))  
except ValueError:
    print("not found!")

print("<<lstrip>>")
print("       abc        ".lstrip())

print("<<rfind>>")
print("abcde".rfind("f"))

print("<<rjust>>")
print("abcde".rjust(20))

print("<<rsplit>>")
print("a,b,c,d,e".rsplit(","))

print("<<splitlines>>")
print("abc\ndef\nghi\n".splitlines())

print("<<swapcase>>")
print("aBcDe".swapcase())

print("<<title>>")
print("abcde".title())

print("<<translate>>")
print("abcde".translate(None, "aeiou"))

print("<<zfill>>")
print("abcde".zfill(10))
