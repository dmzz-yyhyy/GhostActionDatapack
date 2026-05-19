playsound minecraft:entity.wither.hurt voice @s ~ ~ ~ 1 1.5
playsound minecraft:entity.wither.hurt voice @a[distance=..40,tag=effect] ~ ~ ~ 0.6 1.5
playsound minecraft:entity.wither.hurt voice @s ~ ~ 1 1.5
effect give @s instant_health 1 0 true
effect give @s minecraft:regeneration 8 1 true
particle heart ^ ^0.5 ^1 0.3 0.4 0.3 0 5
particle heart ~ ~1 ~-0.3 0.3 0.3 0.3 0 5
title @s times 8t 12t 8t
title @s title [{"translate":"prop.pill.use", "color":"yellow"}]
title @s subtitle [{"translate":"prop.pill.use.subtitle","color":"red"}]
