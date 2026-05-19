execute as @e[tag=smoke_bomb] run scoreboard players add @s smoke_bomb_timer 1
execute as @e[tag=smoke_bomb] at @s run particle minecraft:dust{color: [1.0, 1.0, 1.0], scale: 1.6} ~ ~ ~ 0.2 0.2 0.2 0 3
execute as @e[tag=smoke_bomb] if score @s smoke_bomb_timer matches 20.. if data entity @s {OnGround: true} at @s run function ghost_action:item/prop/smoke_bomb/explode with entity @s

execute as @e[tag=smoke] run scoreboard players add @s smoke_bomb_timer 1
execute as @e[tag=smoke,scores={smoke_bomb_timer=1}] at @s run particle white_smoke ~ ~2 ~ 2 2 2 0 100
execute as @e[tag=smoke,scores={smoke_bomb_timer=2}] at @s run data merge entity @n[tag=smoke,tag=smoke1] {transformation:{scale:[6f,6f,6f]},billboard:"fixed","interpolation_duration":6,"start_interpolation":0}
execute as @e[tag=smoke,scores={smoke_bomb_timer=2}] at @s run data merge entity @n[tag=smoke,tag=smoke2] {transformation:{scale:[5f,5f,5f]},billboard:"fixed","interpolation_duration":6,"start_interpolation":0}
execute as @e[tag=smoke,scores={smoke_bomb_timer=320}] at @s run particle white_smoke ~ ~2 ~ 2 2 2 0 100
execute as @e[tag=smoke,scores={smoke_bomb_timer=320}] at @s run data merge entity @n[tag=smoke,tag=smoke1] {transformation:{scale:[1f,1f,1f]},billboard:"fixed","interpolation_duration":5,"start_interpolation":0}
execute as @e[tag=smoke,scores={smoke_bomb_timer=320}] at @s run data merge entity @n[tag=smoke,tag=smoke2] {transformation:{scale:[0.5f,0.5f,0.5f]},billboard:"fixed","interpolation_duration":5,"start_interpolation":0}
kill @e[tag=smoke,scores={smoke_bomb_timer=326..}]