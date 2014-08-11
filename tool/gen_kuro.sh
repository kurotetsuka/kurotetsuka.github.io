#!/bin/bash

sizes="16 24 32 64 512 1024"

mkdir -p website/img

for size in $sizes; do
	sizestr="${size}x${size}"
	gm convert res/kuro.png \
		-resize ${sizestr} \
		website/img/kuro_${sizestr}.png
	echo ${sizestr}
done
