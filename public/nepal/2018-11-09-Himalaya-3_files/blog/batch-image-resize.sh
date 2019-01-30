#!/usr/bin/env bash
# Purpose: batch image resizer
# Source: https://guides.wp-bullet.com

# Relative path to image folder
FOLDER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Max height
HEIGHT=1200
#HEIGHT=1000

# Max width
WIDTH=1600
#WIDTH=1400

# resize jpg only to eigher height or width, keeps proportions using imagemagick
find ${FOLDER} -iname '*.jpg' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

# check folder size
#du -sh foldername

# execute script
# bash ~/scripts/batch-image-resize.sh