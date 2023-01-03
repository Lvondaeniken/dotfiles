xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
udiskie &

setxkbmap sun_vndr/us 
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&
# setxkbmap -option caps:escape

exec i3
