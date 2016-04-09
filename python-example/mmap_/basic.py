#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import mmap

with open("../mmap", "r+") as f:
    mmapFile = mmap.mmap(f.fileno(), 0)
    
    print("<<readline>>")
    print(mmapFile.readline())
    
    print("<<slice>>")
    print(mmapFile[10:30])
    print(mmapFile.readline())
    
    print("<<seek(0)>>")
    mmapFile.seek(0)
    print(mmapFile.readline())
    
    