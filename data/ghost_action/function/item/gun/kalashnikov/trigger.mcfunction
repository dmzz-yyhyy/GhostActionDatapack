execute if score @s gun_use_cd matches 3.. if entity @s[tag=furious] run scoreboard players set @s gun_use_cd 0

execute if score @s gun_use_cd matches 1.. run return fail

execute at @s run playsound minecraft:item.trident.hit voice @a[distance=..60] ~ ~ ~ 1 0.6

$scoreboard players set @s gun_use_cd $(cd)
execute if score @s gun_use_tick matches 30.. run scoreboard players add @s gun_use_cd 90
execute if score @s gun_use_tick matches 30.. run playsound minecraft:block.lava.extinguish
execute if score @s gun_use_tick matches 30.. run tellraw @s {translate: "hint.overpowered", "color":"red"}
execute if score @s gun_use_tick matches 30.. run scoreboard players set @s gun_use_tick 0
execute if score @s gun_use_tick matches ..40 if entity @s[tag=!furious] run scoreboard players add @s gun_use_tick 6

execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/racasting/raycasting {\
    throughable: "#ghost_action:throughable",\
    particle1: "minecraft:dust{color: [0.0, 2.0, 1.0], scale: 0.5}",\
    particle2: "minecraft:dust{color: [0.0, 2.0, 1.0], scale: 0.5}",\
    on_hit: "ghost_action:item/gun/kalashnikov/hurt",\
    distance: 50\
}
function ghost_action:utils/recoil/recoil {min:45, max:55}