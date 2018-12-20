# Here Xfce is kept as default
session=${1:-i3}

case $session in
    i3|i3wm           ) exec i3;;
    deepin            ) exec startdde;;
    # No known session, try to run it as command
    *                 ) exec $1;;
esac
