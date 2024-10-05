xsetwacom set "Wacom Pen and multitouch sensor Pen stylus" Button 2 key "+super Print -super"
xinput --set-prop 13 "libinput Accel Speed" 0.15
xss-lock $HOME/bin/before-sleep &
xsetroot -solid "#333333"
xrdb -merge ~/.Xresources
xrdb -merge ~/.Xresources-custom
xmodmap .Xmodmap

exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec slstatus &
exec dwm
