execute as @e[type=interaction, tag=droped_bomb] at @s positioned ~ ~ ~ run function ghost_action:item/prop/bomb/particle

execute as @e[type=text_display, tag=planted_bomb] if score @s boom_micro_second_timer matches 1000 if score @s boom_second_timer matches 1.. run scoreboard players remove @s boom_second_timer 1
execute as @e[type=text_display, tag=planted_bomb] if score @s boom_micro_second_timer matches 1000 run scoreboard players reset @s boom_micro_second_timer
execute as @e[type=text_display, tag=planted_bomb] run scoreboard players add @s boom_micro_second_timer 50
execute as @e[type=text_display, tag=planted_bomb] run function ghost_action:item/prop/bomb/write_time

execute as @e[type=text_display, tag=planted_bomb] if score @s boom_sound_timer matches 0 if score @s boom_second_timer matches 1.. at @s run playsound block.lever.click block @a ~ ~ ~ 3 2
execute as @e[type=text_display, tag=planted_bomb] if score @s boom_sound_timer matches 0 run function ghost_action:item/prop/bomb/set_bomb_sound_timer
execute as @e[type=text_display, tag=planted_bomb] if score @s boom_sound_timer matches 1.. run scoreboard players remove @s boom_sound_timer 1

execute as @e[type=text_display, tag=planted_bomb] if score @s boom_second_timer matches 0 at @s run function ghost_action:item/prop/bomb/bomb

execute as @e[type=item] if data entity @s {Item:{components:{"minecraft:custom_data":{item:"prop/bomb"}}}} run data merge entity @s {PickupDelay:32767}
execute as @e[type=item] if data entity @s {OnGround:1b,Item:{components:{"minecraft:custom_data":{item:"prop/bomb"}}}} at @s run function ghost_action:item/prop/bomb/drop

execute as @a[tag=plant] if score @s bomb_timer matches 1 at @s run playsound entity.experience_orb.pickup voice @a[distance=..60] ~ ~ ~ 1 0.5 0.1
execute as @a[tag=plant] if score @s bomb_timer matches 81 run tellraw @s {translate: prop.bombpack.planting.success, color: red}
execute as @a[tag=plant] if score @s bomb_timer matches 81 run item replace entity @s weapon.mainhand with air
execute as @a[tag=plant] if score @s bomb_timer matches 81 run function ghost_action:item/prop/bomb/plant
execute as @a[tag=plant] if score @s bomb_timer matches 81 run scoreboard players reset @s bomb_timer
execute as @a[tag=plant] run function ghost_action:item/prop/bomb/actionbar

scoreboard players add @a[tag=plant] bomb_timer 1
execute as @a[tag=plant] run return run tag @a remove plant
scoreboard players reset @a bomb_timer
execute as @a run attribute @s movement_speed modifier remove ghost_action:plant_bomb
execute as @a run attribute @s gravity modifier remove ghost_action:plant_bomb
execute as @a run attribute @s jump_strength modifier remove ghost_action:plant_bomb