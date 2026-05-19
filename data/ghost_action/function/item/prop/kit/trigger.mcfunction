execute at @s unless entity @e[tag=planted_bomb, distance=..1.5] run return fail
tag @s add unpack
attribute @s movement_speed modifier add ghost_action:unpack -1024 add_value
attribute @s jump_strength modifier add ghost_action:unpack -1024 add_value
attribute @s gravity modifier add ghost_action:unpack 2048 add_value

tag @s add on_action