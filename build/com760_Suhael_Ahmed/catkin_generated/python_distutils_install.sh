#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/andre/Desktop/Untitled Folder/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/andre/Desktop/Untitled Folder/install/lib/python2.7/dist-packages:/home/andre/Desktop/Untitled Folder/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/andre/Desktop/Untitled Folder/build" \
    "/usr/bin/python2" \
    "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/setup.py" \
     \
    build --build-base "/home/andre/Desktop/Untitled Folder/build/com760_Suhael_Ahmed" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/andre/Desktop/Untitled Folder/install" --install-scripts="/home/andre/Desktop/Untitled Folder/install/bin"
