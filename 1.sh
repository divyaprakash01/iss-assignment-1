#!/bin/bash

grep "\S" quotes.txt | cat   #q1.a




awk '!seen[$0]++' quotes.txt  #q2.b