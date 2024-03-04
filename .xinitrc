xinput --set-prop 13 "libinput Accel Speed" 0.15
xsetroot -solid "#333333"
xrdb -merge .Xresources
xmodmap .Xmodmap

while true; do
	date=$(date +"%F %R")
	battery=$(cat /sys/class/power_supply/BAT0/capacity)
	layout=$(setxkbmap -query | grep layout | awk '{print $2}')
	xsetroot -name "$layout ${battery}% — $date"
	sleep 5s
done &

exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec dwm
