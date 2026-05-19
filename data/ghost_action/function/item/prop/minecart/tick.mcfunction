execute as @e[tag=need_kill] at @s run playsound entity.witch.hurt player @a[distance=..40] ~ ~ ~ 3 1
kill @e[tag=need_kill]
execute as @e[type=minecart,tag=minecart] at @s run particle minecraft:end_rod ^ ^ ^ 0.2 0.2 0.2 0 3
execute as @e[tag=minecart_arm, nbt={Motion: [0.0d, 0.0d, 0.0d]}] run tag @s add need_kill
execute as @e[tag=minecart_arm] on passengers on passengers run scoreboard players add @s minecart_time 1
execute as @e[tag=minecart_arm] on passengers on passengers if score @s minecart_time matches 80.. on vehicle on vehicle run kill @s
execute as @e[tag=minecart] on vehicle run execute on passengers run tag @s add need_not_kill
execute as @e[tag=minecart] unless entity @s[tag=need_not_kill] run kill @s
tag @e remove need_not_kill
execute as @a if score @s minecart_time matches 60.. run scoreboard players reset @s minecart_time