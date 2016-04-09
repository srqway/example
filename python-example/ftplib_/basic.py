#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import ftplib

print("<<login>>")
ftp = ftplib.FTP("ftp.freebsd.org")
print(ftp.login())
print("<<getwelcome>>")
print(ftp.getwelcome())
print("<<retrlines>>")
print(ftp.retrlines("LIST"))
print("<<cwd>>")
print(ftp.cwd("pub/FreeBSD"))
print("<<dir>>")
print(ftp.dir())
print("<<retrbinary>>")
print(ftp.retrbinary('RETR README.TXT', open('/tmp/README.TXT', 'wb').write))
print("<<quit>>")
print(ftp.quit())

