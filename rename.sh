#!/bin/sh
# Bash script to rename files in folders for current downloaded data
#
# Usage :
#	
#	./rename.sh <path-to-your-images>
#	

search_engine="Google"
disease=$(basename $1)
cd $1
prefix=$search_engine"-"$disease
for f in *.*;
	do mv "$f" $prefix"-$f";
	rm -f "$f"
done