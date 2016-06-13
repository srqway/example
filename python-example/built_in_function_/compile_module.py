#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import division
from __future__ import print_function
import json

def function_0(dictionary):
    return json.dumps(dictionary)

def function_1():
    return function_0({"x": 30})

print(function_1())
