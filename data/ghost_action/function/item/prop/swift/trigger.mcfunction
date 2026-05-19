playsound minecraft:entity.wither.hurt voice @s ~ ~ ~ 1 1.5
scoreboard players set @s swift_timer 120
tag @s add source
playsound minecraft:entity.wither.hurt voice @a[distance=..40,tag=!effect, tag=!source] ~ ~ ~ 0.6 1.7
playsound minecraft:entity.wither.hurt voice @s ~ ~ 1 1.7
tag @s add source
effect give @s speed 6 1 true
effect give @s minecraft:jump_boost 6 1 true
title @s times 8t 12t 8t
title @s title [{"translate":"prop.swift.use", "color":"green"}]
