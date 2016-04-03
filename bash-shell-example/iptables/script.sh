#!/bin/bash
docker build -t="iptables:1.0.0" .
docker run -itd --name="host_0" --privileged=true iptables:1.0.0 /bin/bash

