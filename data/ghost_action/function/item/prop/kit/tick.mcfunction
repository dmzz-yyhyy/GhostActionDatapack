execute as @a[tag=unpack] if score @s kit_timer matches 1 at @s run playsound entity.experience_orb.pickup voice @a[distance=..65] ~ ~ ~ 2 1.8 0.1
execute as @a[tag=unpack] if score @s kit_timer matches 121 run tellraw @s {translate: prop.kit.unpack.success, color: aqua}
execute as @a[tag=unpack] if score @s kit_timer matches 121 at @s run function ghost_action:item/prop/kit/unpack

execute as @a[tag=unpack] run function ghost_action:item/prop/kit/actionbar

scoreboard players add @a[tag=unpack] kit_timer 1
execute as @a[tag=unpack] run return run tag @a remove unpack
scoreboard players reset @a kit_timer
execute as @a run attribute @s movement_speed modifier remove ghost_action:unpack
execute as @a run attribute @s gravity modifier remove ghost_action:unpack
execute as @a run attribute @s jump_strength modifier remove ghost_action:unpack