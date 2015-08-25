zoom.us Dockerfile
------------------

The Dockerfile in  this repository will let you build a container to use
on your desktop, to run the [zoom.us](https://zoom.us) Linux Desktop
client without needing to install all it's `i386` dependencies in your
primary Linux installation.

You can find the [docker
image](https://hub.docker.com/r/solarce/zoom-us/) on the [Docker
hub](http://hub.docker.com)

Usage
-----

*Note*: I don't have the microphone working yet, I need to figure out
what needs to be shared or volume mounted in still.

You can use the
[run.sh](https://github.com/solarce/zoom-dockerfile/blob/master/run.sh) included in this repository or the following
`docker run`

```
docker run -it --rm \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  --device /dev/snd \
  -v $HOME/.config:/root/.config \
  -v $HOME/.zoom:/root/.zoom \
  --device /dev/video0 \
  solarce/zoom-us
```
