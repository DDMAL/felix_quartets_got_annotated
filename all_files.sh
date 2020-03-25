#!/bin/bash

mkdir -p all_files
for f in $(find . -name "*musicxml")
do
  cp $f all_files
done

