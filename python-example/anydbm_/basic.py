#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function

import anydbm

print("<<create db>>")
db = anydbm.open("database.db", "c")
db.close()

print("<<write db>>")
db = anydbm.open("database.db", "w")
db["record_0"] = "record 0"
db["record_1"] = "record 1"
db["record_2"] = "record 2"
db.close()

print("<<read db>>")
db = anydbm.open("database.db", "r")
for x, y in db.iteritems():
    print("key : %s; value : %s" % (x, y))
db.close()

