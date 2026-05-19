execute unless score @s ender_kill_use_timer matches 1.. at @s run tellraw @s {translate: "prop.ender.use.failed","color":"red"}
execute unless score @s ender_kill_use_timer matches 1.. at @s run tag @s add ender_give_back
execute unless score @s ender_kill_use_timer matches 1.. at @s run return run playsound entity.villager.no

function ghost_action:item/prop/ender/reset
scoreboard players set @s ender_timer 40
tag @s add ender_effect
effect give @s absorption 7 0 true
particle dragon_breath ~ ~1 ~ 0.4 0.5 0.4 0 26
playsound entity.wither.break_block block @a[distance=..30] ~ ~ ~ 1.5 1 0.2 
effect clear @s glowing
effect give @s resistance 2 10 true
effect give @s invisibility 2 1 true
effect give @s speed 2 6 true
scoreboard players set @s gun_use_cd 40
clear @s leather_chestplate