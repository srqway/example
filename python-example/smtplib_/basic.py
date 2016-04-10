#!/usr/bin/python
# -*- coding: utf-8 -*-

from __future__ import print_function
from __future__ import division

import smtplib

print("<<gmail>>")
from_addr = "daniel.hsiehpinghan@gmail.com"
to_addrs  = "thank.hsiehpinghan@gmail.com"
msg = 'Subject: %s\n\n%s' % ("python smtplib subject", "python smtplib text.")
username = "daniel.hsiehpinghan@gmail.com"
password = "3isagesjdje"
server = smtplib.SMTP("smtp.gmail.com:587")
server.starttls()
server.login(username,password)
server.sendmail(from_addr, to_addrs, msg)
server.quit()
print("done.")


