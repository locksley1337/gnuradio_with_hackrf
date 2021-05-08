FROM nobis99/gnuradio:latest AS BASE_IMAGE
RUN sudo apt-get install -y nano
#Because of error X Error: BadDrawable (invalid Pixmap or Window parameter) 9   Major opcode: 62 (X_CopyArea) 
ENV QT_X11_NO_MITSHM=1