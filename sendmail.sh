#!/bin/bash

rand=$((RANDOM))

echo "Subject: test $rand" | sendmail -f foo@falco.bz -S $1:25 $2

