#!/bin/sh

info="$(playerctl metadata --format '{{ artist }} - {{ title }}' || true)"
echo "(box :halign \"center\" :class \"title-box\" (label :class \"txt\" :limit-width 50 :text \"🎵 $info\"))"
