xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" 1.0
xsetroot -solid "#333333"
xrdb -merge .Xresources
xmodmap .Xmodmap

while true; do
	date=$(date +"%F %R")
	xsetroot -name "$date"
	sleep 5s
done &

exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec dwm
