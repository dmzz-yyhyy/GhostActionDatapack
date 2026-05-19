tag @s remove furious_snipe_first_shooted
playsound minecraft:entity.wither.hurt voice @s ~ ~ ~ 1 1.5
scoreboard players set @s furious_timer 80
tag @s add furious
tag @s add source
playsound minecraft:entity.wither.hurt voice @a[distance=..40,tag=!source] ~ ~ ~ 0.6 1.5
playsound minecraft:entity.wither.hurt voice @s ~ ~ 1 1.5
tag @s remove source
title @s times 8t 12t 8t
title @s title [{"translate":"prop.furious.use" ,"color":"red"}]
