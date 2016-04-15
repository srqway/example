#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import socket

print("<<echo client>>")
server_0 = "127.0.0.1"
port_0 = 12002
socket_0 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket_0.connect((server_0, port_0))
with open("../file_client", "rb") as f:
    data_0 = f.read()
socket_0.send(data_0)
print("[client] done.")
socket_0.close()
