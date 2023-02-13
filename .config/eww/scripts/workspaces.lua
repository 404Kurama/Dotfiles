#!/usr/bin/env lua

--// Variables
local workspaces = { 1, 2, 3, 4, 5 }

local pop = assert(io.popen("hyprctl monitors | grep active | xargs", "r"))
local fake_active = pop:read("*a")

local str =
	'(box :halign "start" :valign "center" :class "workspace-box" :orientation "h" :space-evenly false :spacing 5 '

--// Core
pop:close()

local active = {}

for i in string.gmatch(tostring(fake_active), "%d+") do
	active[tostring(i)] = tostring(i)
end

for _, v in next, workspaces do
	if active[tostring(v)] then
		str = str
			.. string.format(
				'(overlay (box :class "selected" :width 20 :height 20) (label :class "focused" :text "%s") (button :onclick "hyprctl dispatch workspace %s" ""))',
				tostring(v),
				tostring(v)
			)
	else
		str = str
			.. string.format(
				'(overlay (box :width 20 :height 20) (label :class "empty" :text "%s") (button :onclick "hyprctl dispatch workspace %s" ""))',
				tostring(v),
				tostring(v)
			)
	end
end

print(str .. ")")
