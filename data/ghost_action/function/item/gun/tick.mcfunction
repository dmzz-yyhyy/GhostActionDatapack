execute as @a if score @s gun_use_cd matches 1.. run scoreboard players remove @s gun_use_cd 1
execute as @a if score @s gun_use_tick matches 1 run scoreboard players remove @s gun_use_tick 1
execute as @a if score @s gun_use_tick matches 1.. run scoreboard players remove @s gun_use_tick 2
execute as @a unless score @s gun_use_tick matches 0.. run scoreboard players set @s gun_use_tick 0 