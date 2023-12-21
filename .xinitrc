xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" 1.0
# xautolock -locker xlock -killer "systemctl suspend" &
# xss-lock --transfer-sleep-lock -- xlock &
xsetroot -solid "#333333"
xrdb -merge .Xresources
xmodmap .Xmodmap

while true; do
	date=$(date +"%F %R")
	battery=$(cat /sys/class/power_supply/BAT0/capacity)
	xsetroot -name "BAT0 ${battery}% — $date"
	sleep 30s
done &

exec dwm
