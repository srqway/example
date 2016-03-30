#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

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
print("{0} {1}".format("arg0", "arg1"))
print("{arg0} {arg1}".format(arg0="arg0", arg1="arg1"))
print("|{arg0:10}|".format(arg0="arg0"))
print("|{arg0:{len}}|".format(arg0="arg0", len=10))

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
