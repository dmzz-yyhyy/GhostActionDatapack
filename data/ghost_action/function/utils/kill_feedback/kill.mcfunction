scoreboard players set @s kill_actionbar 25
playsound block.end_gateway.spawn player @s ~ ~ ~ 1 2
playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 1 0.5
title @s[scores={kill_actionbar=1..}] actionbar [{text:"☠ ", color:"gold"},{type:"selector",selector:"@a[scores={death_trigger=1..}]"}]
scoreboard players set @a kill_feedback 0
scoreboard players set @a death_trigger 0