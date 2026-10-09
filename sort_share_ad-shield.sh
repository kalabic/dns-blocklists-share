#!/usr/bin/bash

sort -u -f share/ad-shield.txt > share/ad-shield_sorted.txt
rm share/ad-shield.txt
mv share/ad-shield_sorted.txt share/ad-shield.txt
