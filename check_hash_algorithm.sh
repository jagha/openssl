#!/bin/bash

#Declaring Variable
ip=${1}

#Greping for Hash Algorithm
echo "QUIT" | openssl s_client -connect ${ip}:443 2>/dev/null | openssl x509 -noout -text 2>/dev/null | grep -m 1 Signature | awk '{print $3}' | cut -c1-4
