#!/bin/bash

# author: Soeren Walls (solarbabies)
# date: Sept 22, 2021
# license: MIT

for ats_filename in *ats
do
  choreo_title="${ats_filename%.*}"
  ogg_filename=$(grep -oP -- '"songFilename":\s*"\K([^"]+)' "$ats_filename")
  mkdir -p -- "$choreo_title"
  mv -- "$ats_filename" "$choreo_title"
  mv -- "$ogg_filename" "$choreo_title"
done