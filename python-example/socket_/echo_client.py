#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import socket

print("<<echo client>>")
server_0 = "127.0.0.1"
port_0 = 12001
socket_0 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket_0.connect((server_0, port_0))
socket_0.send("Hello.")
data_0 = socket_0.recv(1024)
print("[client] %s" % data_0)
socket_0.close()
