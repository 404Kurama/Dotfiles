#!/usr/bin/env bash

lock="\uf023 Lock"
logout="\uf842 Log Out"
shutdown="\uf011 Shut Down"
reboot="\u21ba Reboot"
sleep="\uf186 Sleep"
hibernate="\uf7c9  Hibernate"

entries="$lock\n$logout\n$sleep\n$hibernate\n$reboot\n$shutdown"

selected=$(echo -e $entries | wofi -dmenu --width=250px --height=300px -p "Power" | awk '{print tolower($2)}')

printf $selected
case $selected in
    lock)
        playerctl pause
        swaylock
        ;;
    logout)
        loginctl terminate-user "$(whoami)"
        ;;
    shut)
        systemctl poweroff
        ;;
    reboot)
        systemctl reboot
        ;;
    sleep)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
esac
