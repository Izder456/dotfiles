#!/bin/sh

mkdir -p /tmp/fauxstream
sh /usr/local/bin/fauxstream -r 1280x800 -f 30 -crf 20 -a 1 /tmp/fauxstream/$(date +%Y_%m_%d-%H_%M_%S)-recording.flv
