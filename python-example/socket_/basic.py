#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import socket


print("<<get host name>>")
print(socket.gethostname())
print("<<get host by name>>")
print(socket.gethostbyname("www.google.com"))
print("<<get host by name ex>>")
print(socket.gethostbyname_ex("www.google.com"))
print("<<get host by address>>")
print(socket.gethostbyaddr("74.125.203.103"))

print("<<get service by name>>")
print(socket.getservbyname("ftp", "tcp"))

print("<<connect to google>>")
socket_0 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host_0 = "www.google.com"
port_0 = socket.getservbyname("http", "tcp")
socket_0.connect((host_0, port_0))
print(socket_0.getsockname())
print(socket_0.getpeername())
socket_0.close()
