tag @s add source
execute as @e[tag=bomb_point] at @s positioned ~-0.5 ~ ~-0.5 if function ghost_action:item/prop/bomb/is_in_bomb_point as @a[tag=source] run function ghost_action:item/prop/bomb/set_bomb
tag @e remove source