default_name() {
    pacmd stat | awk -F": " '/^Default sink name: /{print $2}'
}

default_vol() {
    pacmd list-sinks |
        awk '/^\s+name: /{indefault = $2 == "<'$(default_name)'>"}
            /^\s+volume: / && indefault {print $5; exit}'
}

default_mute() {
    pacmd list-sinks | awk '/^\s+name: /{indefault = $2 == "<'$(default_name)'>"} /^\s+muted: / && indefault {print $2; exit}'
}

print_vol () {
	vol=$(default_vol | tr -d "%%")
	mute=$(default_mute)

	echo false > /tmp/vol_mute
	if [ "$mute" = "yes" ]; then
	  echo "ﱝ"
	  echo true > /tmp/vol_mute
	elif [ "$(echo "$vol" | tr -d "%")" -gt 70 ]; then
	  echo "墳 $vol"
	elif [ "$(echo "$vol" | tr -d "%")" -gt 35 ]; then
	  echo "奔 $vol"
	else
	  echo "奄 $vol"
	fi

	echo true > /tmp/vol_changed 
}

pactl subscribe | \
		grep --line-buffered "sink" | \
        while read -r _; do
        print_vol
        done &

while true 
do
	changed=$(cat /tmp/vol_changed 2>/dev/null)
	mute=$(cat /tmp/vol_mute 2>/dev/null)
	$changed && echo false > /tmp/vol_changed || $mute || echo ""
	sleep 2
done
