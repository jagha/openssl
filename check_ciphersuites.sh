#!/bin/bash

nmap --script ssl-enum-ciphers.nse -p 443 ${1}
