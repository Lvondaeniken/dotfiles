xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
udiskie &

xset r rate 180 25
setxkbmap sun_vndr/us 

exec firefox&
exec keepassxc&
exec i3
