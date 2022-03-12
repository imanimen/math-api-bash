#!/bin/bash 
nc -l -p $1 > test.txt
cat test.txt | awk '{print $2}' | head -1 | cut -c2- | bc > result.sh
echo -ne "HTTP/1.1 200 OK\r\n" ; cat result.sh | nc -l -p 1212
