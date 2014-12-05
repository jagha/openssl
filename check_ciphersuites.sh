ECDC\jagha@secopsutil001-sma:~$ cat /usr/local/bin/check_ciphersuites.sh
#!/bin/bash

nmap --script ssl-enum-ciphers.nse -p 443 ${1}
