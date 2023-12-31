xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" 1.0
xsetroot -solid "#333333"
xrdb -merge .Xresources
xmodmap .Xmodmap

while true; do
	date=$(date +"%F %R")
	battery=$(cat /sys/class/power_supply/BAT0/capacity)
	xsetroot -name "BAT0 ${battery}% — $date"
	sleep 5s
done &

exec dwm
