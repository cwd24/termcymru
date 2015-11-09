#!/usr/bin/bash

uconv -f UTF-16LE -t UTF-8 --remove-signature 20150522-TermCymru.csv > 20150522-termcymru.csv
rm 20150522-TermCymru.csv
