#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol

from hbase import Hbase
from hbase.ttypes import *

class HbaseClient(object):
    def __init__(self, host='127.0.0.1', port=9090):
        self.transport = TTransport.TBufferedTransport(TSocket.TSocket(host, port))
        protocol = TBinaryProtocol.TBinaryProtocol(self.transport)
        self.client = Hbase.Client(protocol)

    def get_tables(self):
        self.transport.open()
        tables = self.client.getTableNames()
        self.transport.close()
        return tables

client = HbaseClient()
print client.get_tables()
