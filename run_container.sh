docker run -ti --privileged --rm -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix/:/tmp/.X11-unix \
       -v /dev/bus/usb:/dev/bus/usb \
       -v /dev/snd:/dev/snd \
       --device /dev/snd \
       -v $HOME:/home/developer/working \
       --name gnuradio_hackrf \
       cyprysp/gnuradio_hackrf:latest