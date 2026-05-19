execute if entity @s[tag=furious] run scoreboard players set @s gun_use_tick 50
execute if score @s gun_use_cd matches 1.. run return fail

$scoreboard players set @s gun_use_cd $(cd)

execute at @s run playsound minecraft:item.hoe.till voice @a[distance=..80] ~ ~ ~ 4 2
execute at @s run playsound minecraft:item.trident.hit voice @a[distance=..80] ~ ~ ~ 4 1

execute if score @s gun_use_tick matches 15.. if score @s gun_use_cd matches 2.. run scoreboard players remove @s gun_use_cd 2
execute if score @s gun_use_tick matches ..30 run scoreboard players add @s gun_use_tick 16

execute if score @s gun_use_tick matches ..15 anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/racasting/raycasting {\
    throughable: "#ghost_action:throughable",\
    particle1: "minecraft:dust{color: [0.20, 0.5, 0.0], scale: 0.6}",\
    particle2: "minecraft:dust{color: [0.20, 0.5, 0.0], scale: 0.6}",\
    on_hit: "ghost_action:item/gun/machinegun/hurt",\
    distance: 200\
}
execute if score @s gun_use_tick matches 15.. anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/racasting/raycasting {\
    throughable: "#ghost_action:throughable",\
    particle1: "minecraft:dust{color: [0.49, 1.0, 0.0], scale: 0.6}",\
    particle2: "minecraft:dust{color: [0.49, 1.0, 0.0], scale: 0.6}",\
    on_hit: "ghost_action:item/gun/machinegun/hurt",\
    distance: 200\
}

function ghost_action:utils/recoil/recoil {min: 20, max: 25}