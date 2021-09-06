#!/bin/sh

print_bar () {
	if [ "${#1}" -gt "15" ]; then
		title="$(echo "$1" | cut -c -14)…"
	else
		title=$1
	fi

	$2 && printf "%s" "%{+u}%{u#FFFFFF}%{A1:playerctl pause:}" || printf "%s" "%{A1:playerctl play:}"
	printf "%s" "%{A2:playerctl stop:}"
	printf "%s" "%{A6:playerctl next:}"
	printf "%s" "%{A8:playerctl previous:}"
	printf "%s" "%{A4:pulsemixer --change-volume +10:}"
	printf "%s" "%{A5:pulsemixer --change-volume -10:}"
	printf "%s" "[$title  ]"
	printf "%s" "%{A}%{A}%{A}%{A}%{A}%{A}%{-u}"
	printf "\n"
}

scroll () {
	zscroll --before-text "[" --after-text "]" --delay 0.3 "$1" &
	return $!
}

update_status () {
	format=$(playerctl --player=$PLAYER metadata --format "{{ title }}")

	if [ "$1" = "Playing" ]; then
		print_bar "$format" true
		#sleep 1 && pgrep glava > /dev/null || glava > /dev/null &
	elif [ "$1" = "Paused" ]; then
		print_bar "$format" false
	else
		echo ""
		#killall glava
	fi
}

playerctl status -F | \
	while read -r status; do
	update_status $status
	done
