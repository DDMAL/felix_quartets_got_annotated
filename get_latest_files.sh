#!/bin/bash

mkdir latest_files
for f in $(find . -name "*revised.musicxml")
do
  cp $f latest_files
done

