#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import socket

print("<<echo server>>")
server_1 = ""
port_1 = 12001
socket_1 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket_1.bind((server_1, port_1))
socket_1.listen(3)
client_1, addr_1 = socket_1.accept()
print(addr_1)
while True:
    data_0 = client_1.recv(1024)
    if not data_0:
        break
    print("[server] %s" % data_0)
    client_1.send(data_0)
socket_1.close()

