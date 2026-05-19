execute as @a[scores={swift_timer=1..},gamemode=!spectator] at @s run particle happy_villager ~ ~ ~ 0.5 1 0.5 0.5 1
execute as @a[scores={swift_timer=60}] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 2 2
tellraw @a[scores={swift_timer=60}] [{"translate":"prop.swift.tip","color":"green"},{"text":":","color":"yellow"},{"text":"3","color":"aqua"}]
execute as @a[scores={swift_timer=40}] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 2 2
tellraw @a[scores={swift_timer=40}] [{"translate":"prop.swift.tip","color":"green"},{"text":":","color":"yellow"},{"text":"2","color":"blue"}]
execute as @a[scores={swift_timer=20}] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 2 2
tellraw @a[scores={swift_timer=20}] [{"translate":"prop.swift.tip","color":"green"},{"text":":","color":"yellow"},{"text":"1","color":"red"}]
execute as @a[scores={swift_timer=1}] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 2 2
tellraw @a[scores={swift_timer=1}] [{"translate":"prop.swift.tip","color":"green"},{"text":":","color":"yellow"},{"translate":"prop.end","color":"gray"}]
execute as @a[scores={swift_timer=1..}] at @s run scoreboard players remove @s swift_timer 1