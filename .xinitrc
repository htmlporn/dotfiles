# Here Xfce is kept as default
session=${1:-i3}
#export GDK_BACKEND=x11
#exec gnome-session

case $session in
    i3|i3wm           ) exec i3;;
    deepin            ) exec startdde;;
    gnome            ) exec gnome-session;;
    # No known session, try to run it as command
    *                 ) exec $1;;
esac
