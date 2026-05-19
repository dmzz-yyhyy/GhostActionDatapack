execute as @a[scores={ender_timer=1}] at @s run effect clear @s resistance
execute as @a[scores={ender_timer=1}] at @s run effect clear @s speed
execute as @a[scores={ender_timer=1}] at @s run effect clear @s invisibility
execute as @a[scores={ender_timer=1}] at @s run particle dragon_breath ~ ~1 ~ 0.4 0.5 0.4 0 26
execute as @a[scores={ender_timer=1}] at @s run playsound entity.wither.break_block block @a[distance=..30] ~ ~ ~ 1.5 1 0.2 
execute as @a[scores={ender_timer=..1}] at @s run tag @s remove ender
execute as @a[scores={ender_timer=1..}] at @s run effect clear Glowing
scoreboard players remove @a[scores={ender_timer=1..}] ender_timer 1

execute as @a if score @s ender_kill matches 1.. if items entity @s container.* paper[custom_data~{item: "prop/ender"}] run scoreboard players set @s ender_kill_use_timer 160
execute as @a if score @s ender_kill matches 1.. if items entity @s container.* paper[custom_data~{item: "prop/ender"}] run tellraw @s {translate: "prop.ender.kill.start", color: "light_purple"}
execute as @a if score @s ender_kill matches 1.. run scoreboard players reset @s ender_kill

execute as @a if score @s ender_kill_use_timer matches 0 run tellraw @s {translate: "prop.ender.kill.end", color: "light_purple"}
execute as @a if score @s ender_kill_use_timer matches 0 run scoreboard players reset @s ender_kill_use_timer
execute as @a if score @s ender_kill_use_timer matches 1.. run scoreboard players remove @s ender_kill_use_timer 1

execute as @a[tag=ender_give_back] run function ghost_action:item/prop/ender/give_back
execute as @a[tag=ender_give_back] run tag @s remove ender_give_back