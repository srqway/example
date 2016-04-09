#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import httplib

print("<<get>>")
conn_0 = httplib.HTTPConnection("www.google.com.tw")
conn_0.request("GET", "/index.html")
response_0_0 = conn_0.getresponse()
print(response_0_0.status)
conn_0.close()
conn_0.request("GET", "http://news.google.com.tw/nwshp?hl=zh-TW&tab=wn")
response_0_1 = conn_0.getresponse()
print(response_0_1.status)
