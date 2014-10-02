#!/bin/bash
for i in {1..50};do echo $RANDOM,$(sed -n "$(($i+$i%$(wc -l < /usr/share/dict/words)))"p /usr/share/dict/words),$(sed -n "$(($i+1+$i%$(wc -l < /usr/share/dict/words)))"p /usr/share/dict/words); done | awk -F, '{if (NF==3) print}'
