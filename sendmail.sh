#!/bin/bash

rand=$((RANDOM))
date=`date -R`

echo "Subject: test $rand $date" | sendmail -f $2 -S $1:25 $3

