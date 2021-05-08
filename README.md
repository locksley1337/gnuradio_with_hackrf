# gnuradio_with_hackrf
Hackrf + gnuradio
Issues:
Error: X Error: BadDrawable (invalid Pixmap or Window parameter) 9   Major opcode: 62 (X_CopyArea) 
Fix:
export QT_X11_NO_MITSHM=1

Error: unable to connect to hackrf
hackrf_get_operacake_boards() failed: HACKRF_ERROR_LIBUSB (-1000)

Fix:
Add docker to plugdev in /etc/group
You can also do it in container.
More info:
Unable to access the board as non-root user. This is a permission issue. There is a udev rule that gets installed as part of the HackRF host code install process. It defaults to plugdev group but also supports the usb group. Check which of these groups exist on your system, then look for /etc/udev/rules.d/53-hackrf.rules, check that it references the appropriate group and that you are a member of that group.
https://github.com/mossmann/hackrf/issues/301
https://github.com/mossmann/hackrf/issues/305
