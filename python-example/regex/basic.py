#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division
import re

print('<<b.d>>')
compile_0 = re.compile('b.d')
search_0 = compile_0.search("abcdef")
print(search_0.group(0))

print('<<(b.d)>>')
compile_1 = re.compile('(b.d)')
search_1 = compile_1.search("abcdef")
print(search_1.groups())

print('<<(b[abc])>>')
compile_2 = re.compile('(b[abc])')
search_2 = compile_2.search("abcdef")
print(search_2.groups())

print('<<(b[^abc])>>')
compile_3 = re.compile('(b[^abc])')
search_3 = compile_3.search("abcdef")
try:
    print(search_3.groups()) 
except AttributeError:
    print("no match!")
    
print('<<([a-cx-z])>>')
compile_4 = re.compile('([a-cx-z])')
search_4 = compile_4.search("abcdef")
print(search_4.groups())

print('<<(ab{2})>>')
compile_5 = re.compile('(ab{2})')
search_5 = compile_5.search("aaabbbccc")
print(search_5.groups())

print('<<(^http://)>>')
compile_6 = re.compile('(^http://)')
search_6 = compile_6.search("http://www.google.com/")
print(search_6.groups())

print('<<(^http://), re.MULTILINE>>')
compile_7 = re.compile('(^http://)', re.MULTILINE)
search_7 = compile_7.search("https://www.google.com.tw\nhttp://www.google.com/")
print(search_7.groups())

print('<<(.com/$)>>')
compile_8 = re.compile('(.com/$)')
search_8 = compile_8.search("http://www.google.com/")
print(search_8.groups())

print('<<(cde|xyz)>>')
compile_9 = re.compile('(cde|xyz)')
search_9 = compile_9.search("abcdef")
print(search_9.groups())

print('<<(cd(e|x))>>')
compile_10 = re.compile('(cd(e|x))')
search_10 = compile_10.search("abcdef")
print(search_10.groups())
