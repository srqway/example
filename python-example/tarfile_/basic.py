#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import tarfile

print("<<compress>>")
with tarfile.open("/tmp/tarfile.tar.gz", mode = "a") as tarF:
    for f in ["/etc/passwd", "/etc/shells"]:
        tarF.add(f)
print("compress done.")

print("<<decompress>>")
with tarfile.open("/tmp/tarfile.tar.gz", mode = "r") as tarF:
    
    import os
    
    def is_within_directory(directory, target):
        
        abs_directory = os.path.abspath(directory)
        abs_target = os.path.abspath(target)
    
        prefix = os.path.commonprefix([abs_directory, abs_target])
        
        return prefix == abs_directory
    
    def safe_extract(tar, path=".", members=None, *, numeric_owner=False):
    
        for member in tar.getmembers():
            member_path = os.path.join(path, member.name)
            if not is_within_directory(path, member_path):
                raise Exception("Attempted Path Traversal in Tar File")
    
        tar.extractall(path, members, numeric_owner=numeric_owner) 
        
    
    safe_extract(tarF, "/tmp/tarfile")
print("decompress done.")

