#!/bin/bash

echo "starting Nmap Scaning ...."

mkdir -p results

echo "running port scan...."
nmap -Pn -iL target.txt  -sS -p1-1000 -T4 -oN results/newport.txt

echo "combine scan..."

nmap -Pn -iL target.txt -A  -T5 -oN results/new_combine.txt
