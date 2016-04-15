#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import socket

print("<<file server>>")
server_1 = ""
port_1 = 12002
socket_1 = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket_1.bind((server_1, port_1))
socket_1.listen(3)
client_1, addr_1 = socket_1.accept()
print(addr_1)

with open("/tmp/file_server", "wb") as f:
    while True:
        data_0 = client_1.recv(1024)
        if not data_0:
            break
        f.write(data_0)
    print("[server] done.")
socket_1.close()

