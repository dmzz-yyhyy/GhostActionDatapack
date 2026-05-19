tag @e remove blasting_crystal_sneaking
execute \
    as @e[tag=blasting_crystal] \
    at @s \
    positioned ~-0.3 ~ ~-0.3 \
    as @a[dx=6, dy=6, dz=6] \
    if predicate ghost_action:is_shift \
    run tag @s add blasting_crystal_sneaking
scoreboard players reset @a[tag=!blasting_crystal_sneaking] blasting_crystal_timer
scoreboard players add @a[tag=blasting_crystal_sneaking] blasting_crystal_timer 1
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 1 at @s run playsound entity.experience_orb.pickup voice @a[distance=..60] ~ ~ ~ 1 0.5 0.1
execute as @a[tag=blasting_crystal_sneaking] at @s if score @s blasting_crystal_timer matches 1 run tellraw @s {translate: "mode.blasting.crystal.gain", color: "green", extra: [": ", {text: "4", color: "yellow"}]} 
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 21 at @s run playsound entity.experience_orb.pickup voice @a[distance=..60] ~ ~ ~ 1 0.5 0.1
execute as @a[tag=blasting_crystal_sneaking] at @s if score @s blasting_crystal_timer matches 21 run tellraw @s {translate: "mode.blasting.crystal.gain", color: "green", extra: [": ", {text: "3", color: "yellow"}]} 
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 41 at @s run playsound entity.experience_orb.pickup voice @a[distance=..60] ~ ~ ~ 1 0.5 0.1
execute as @a[tag=blasting_crystal_sneaking] at @s if score @s blasting_crystal_timer matches 41 run tellraw @s {translate: "mode.blasting.crystal.gain", color: "green", extra: [": ", {text: "2", color: "yellow"}]} 
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 61 at @s run playsound entity.experience_orb.pickup voice @a[distance=..60] ~ ~ ~ 1 0.5 0.1
execute as @a[tag=blasting_crystal_sneaking] at @s if score @s blasting_crystal_timer matches 61 run tellraw @s {translate: "mode.blasting.crystal.gain", color: "green", extra: [": ", {text: "1", color: "yellow"}]} 
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 81 at @s run playsound entity.experience_orb.pickup voice @a[distance=..60] ~ ~ ~ 1 0.5 0.1
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 81 run tellraw @s {"text":"+25￥","color": "gold"}
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 81 run scoreboard players add @s blasting_coins 25
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 81 run effect give @s absorption 20 0 true
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 81 at @s run kill @n[tag=blasting_crystal]
execute as @a[tag=blasting_crystal_sneaking] if score @s blasting_crystal_timer matches 81 run scoreboard players reset @s blasting_crystal_timer