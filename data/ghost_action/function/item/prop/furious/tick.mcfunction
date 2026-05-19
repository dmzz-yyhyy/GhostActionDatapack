execute as @a[scores={furious_timer=1..},gamemode=!spectator] at @s run particle flame ~ ~ ~ 0.3 1.3 0.3 0 1
execute as @a[scores={furious_timer=60}] at @s run playsound item.lodestone_compass.lock voice @s ~ ~ ~ 2 1
tellraw @a[scores={furious_timer=60}] [{"translate":"prop.furious.tip","color":"red"},{"text":":","color":"yellow"},{"text":"3","color":"aqua"}]
execute as @a[scores={furious_timer=40}] at @s run playsound item.lodestone_compass.lock voice @s ~ ~ ~ 2 1
tellraw @a[scores={furious_timer=40}] [{"translate":"prop.furious.tip","color":"red"},{"text":":","color":"yellow"},{"text":"2","color":"blue"}]
execute as @a[scores={furious_timer=20}] at @s run playsound item.lodestone_compass.lock voice @s ~ ~ ~ 2 1
tellraw @a[scores={furious_timer=20}] [{"translate":"prop.furious.tip","color":"red"},{"text":":","color":"yellow"},{"text":"1","color":"red"}]
execute as @a[scores={furious_timer=1}] at @s run playsound item.lodestone_compass.lock voice @s ~ ~ ~ 2 1
execute as @a[scores={furious_timer=1}] at @s run tag @s remove furious
tag @a[scores={furious_timer=1}] remove furious_snipe_first_shooted
tellraw @a[scores={furious_timer=1}] [{"translate":"prop.furious.tip","color":"red"},{"text":":","color":"yellow"},{"translate":"prop.end","color":"gray"}]
execute as @a[scores={furious_timer=1..}] at @s run scoreboard players remove @s furious_timer 1
