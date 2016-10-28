#!/bin/bash

# -------------------------------------------- VARIABLES

. $HOME/.bin/panel/panel_settings

FG_COLOR="#dcd8d8"
BG_COLOR="#000000"
WIDTH=700
HEIGHT=15
X=1220
Y=0
TEXT_ALIGNMENT="right"
#FONT="-*-gohufont-*-r-*-12-*-*-*-*-*-*-*-*"
FONT="-*-terminus-*-*-*-*-*-14-*-*-*-*"
#FONT="Terminus 12"


ICON_COLOR="#5CB68B"
RAND_COLOR="#ad1b2a"
SEP="^fg(#2a2a2a) | ^fg()"

BAR_STYLE="-w 33 -h 10 -s o -ss 1 -sw 4 -nonl"
BAR_FG_COLOR=$FG_COLOR
BAR_BG_COLOR="#333333"

NOW_PLAYING_ICON="/home/null/.bin/icons/note.xbm"
NOW_PLAYING_FORMAT="%a - %t"

BATTERY_CHARGING_ICON="/home/null/.bin/icons/bat_full_01.xbm"
BATTERY_DISCHARGING_ICON="/home/null/.bin/icons/bat_low_01.xbm"
BATTERY_MISSING_ICON="/home/null/.bin/icons/ac_01.xbm"
BATTERY_CRITICAL_PERCENTAGE=10
BATTERY_CRITICAL_FG_COLOR="#220000"
BATTERY_CRITICAL_BG_COLOR="#660000"

WIRELESS_ICON="/home/null/.bin/icons/wifi_01.xbm"
WIRELESS_CLIENT="nmtui-connect"

VOLUME_ICON="/home/null/.bin/icons/spkr_01.xbm"

CAL_CLICK="/home/null/.bin/panel/cal_click.sh"

CLOCK_ICON="/home/null/.bin/icons/clock.xbm"
CLOCK_FORMAT="%H:%M"

# -------------------------------------------- FUNCTIONS

icon() {
	echo "^fg($ICON_COLOR)^i($1)^fg()"
}

bar() {
	echo $1 | gdbar $BAR_STYLE -fg $BAR_FG_COLOR -bg $BAR_BG_COLOR
}

now_playing() {
	ncmpcpp --now-playing "$NOW_PLAYING_FORMAT"
}

battery_icon() {
	if [ "$battery_status" == "Charging" ]; then
		icon "$BATTERY_CHARGING_ICON"
	elif [ "$battery_status" == "Discharging" ]; then
		icon "$BATTERY_DISCHARGING_ICON"
	else
		icon "$BATTERY_MISSING_ICON"
	fi
}

battery_percentage() {
	percentage=$(acpi -b | cut -d "," -f 2 | tr -d " %")
	if [ -z "$percentage" ]; then
		echo "AC"
	elif [ $percentage -le $BATTERY_CRITICAL_PERCENTAGE ] && [ $battery_status == "Discharging" ]; then
		echo 100 | gdbar $BAR_STYLE -fg $BATTERY_CRITICAL_FG_COLOR -bg $BATTERY_CRITICAL_BG_COLOR
	else
		bar "$percentage"
	fi
}

battery() {
	battery_status=$(acpi -b | cut -d ' ' -f 3 | tr -d ',')
	echo $(battery_icon) $(battery_percentage)
}

wireless_quality() {
	quality_bar=$(bar "$(cat /proc/net/wireless | grep wlp3s0 | cut -d ' ' -f 5 | tr -d '.')")
	echo "^ca(3, $WIRELESS_CLIENT)$quality_bar^ca()"
}

volume() {
	volume=$(amixer get Master | egrep -o "[0-9]+%" | tr -d "%")
        echo -n "^ca(1, amixer -q set Master 5%-)^ca(3, amixer -q set Master 5%+)^ca(2, amixer -q set Master toggle)"
        if [ -z "$(amixer get Master | grep "\[on\]")" ]; then
                echo -n "$(echo $volume | gdbar $BAR_STYLE -bg $BAR_BG_COLOR -fg $BAR_BG_COLOR)"
        else
                echo -n "$(bar $volume)"
        fi
        echo "^ca()^ca()^ca()"
}

clock() {
	echo "^ca(1, $CAL_CLICK)"$(date +$CLOCK_FORMAT)"^ca()"

}

# -------------------------------------------- SCRIPT EXECUTION LOOP, PIPED INTO DZEN2

while :; do
	echo -n "$(icon $NOW_PLAYING_ICON) $(now_playing)$SEP"
	echo -n NET "$(icon $WIRELESS_ICON) $(wireless_quality)$SEP"
	echo -n VOL "$(icon $VOLUME_ICON) $(volume)$SEP"
	echo -n BAT  "$(battery)$SEP"
	echo  "$(icon $CLOCK_ICON) $(clock) "
	sleep 3
done | dzen2 -fg $FG_COLOR -bg $BG_COLOR -ta $TEXT_ALIGNMENT -w $WIDTH -h $HEIGHT -x $X -y $Y -fn $FONT 
