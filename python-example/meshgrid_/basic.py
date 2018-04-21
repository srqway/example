#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import logging
import logging.handlers
import fnmatch
import os

print("<<logging>>")
loggingFile = "/tmp/logging"
logging.basicConfig(filename=loggingFile, level=logging.DEBUG)
logging.debug("debug message")
with open(loggingFile, "rb") as f_0:
    for line in f_0:
        print(line)
        
print("<<rotate loggin>>")
rotateLoggingFile = "/tmp/rotateLogging"
logger = logging.getLogger("rotateLogger")
logger.setLevel(logging.DEBUG)
handler = logging.handlers.RotatingFileHandler(filename=rotateLoggingFile, maxBytes=300, backupCount=3)
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
handler.setFormatter(formatter)
logger.addHandler(handler)
for i in range(1000):
    logger.debug("i = %d" % i)

for f in os.listdir("/tmp/"):
    if fnmatch.fnmatch(f, "rotateLogging*"):
        print(f)
