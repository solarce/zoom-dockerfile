#!/usr/bin/en bash

# script to help run zoom in container

if [[ ! -d $HOME/.zoom ]]; then
  mkdir $HOME/.zoom
fi

docker run -it --rm \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  --device /dev/snd \
  -v $HOME/.config:/root/.config \
  -v $HOME/.zoom:/root/.zoom \
  --device /dev/video0 \
  solarce/zoom-us

