#!/bin/bash
# merge all wordslist.txt in words/ into subdomains.txt

cat words/*.txt | uniq > subdomains.txt