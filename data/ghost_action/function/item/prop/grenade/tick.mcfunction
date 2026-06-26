execute as @e[tag=grenade] run scoreboard players add @s grenade_timer 1
execute as @e[tag=grenade] at @s run particle minecraft:dust{color: [1.0, 1.0, 1.0], scale: 1.6} ~ ~ ~ 0.2 0.2 0.2 0 3
execute as @e[tag=grenade] if score @s grenade_timer matches 40.. if data entity @s {OnGround:1b} at @s run function ghost_action:item/prop/grenade/explode with entity @s