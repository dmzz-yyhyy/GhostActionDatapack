function ghost_action:item/prop/bomb/summon_bomb
team join red @e[tag=droped_bomb]
data modify entity @e[tag=droped_bomb,limit=1] Rotation set from entity @s Rotation
execute on owner run tellraw @s {"translate":"prop.bombpack.drop", "color": "gold"}

execute store result storage ghost_action:temp x int 1 run data get entity @s Pos[0]
execute store result storage ghost_action:temp y int 1 run data get entity @s Pos[1]
execute store result storage ghost_action:temp z int 1 run data get entity @s Pos[2]
function ghost_action:item/prop/bomb/print_pos with storage ghost_action:temp
data remove storage ghost_action:temp x
data remove storage ghost_action:temp y
data remove storage ghost_action:temp z
execute as @s at @s run playsound minecraft:block.stone.fall player @s ~ ~ ~ 1 1
kill @s