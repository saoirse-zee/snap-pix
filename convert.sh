#!/bin/sh

echo $DATE
SOURCE="./snaps/r3/*.jpg"
DEST="out-"
DEST+=`date '+%Y-%m-%d_%H%M%S'`
DEST+=".gif"
echo $DEST

convert -delay 18 \
	-loop 0 \
	-distort SRT 180 \
	-scale 180 \
	-posterize 2 \
	+level-colors "#F26B8F",pink \
	-scale 1000 \
	$SOURCE \
	$DEST

#	+level-colors plum1,PaleTurquoise1 \
#	+level-colors MediumForestGreen,pink \

