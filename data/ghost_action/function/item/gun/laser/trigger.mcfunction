execute if score @s gun_use_cd matches 1.. run return fail
$scoreboard players set @s gun_use_cd $(cd)

execute at @s run playsound minecraft:item.trident.hit voice @s ~ ~ ~ 3 2
execute at @s run playsound minecraft:item.trident.hit voice @a[distance=..60,tag=!source] ~ ~ ~ 1 2

execute unless entity @s[tag=furious] anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/racasting/raycasting {\
    throughable: "#ghost_action:throughable",\
    particle1: "minecraft:dust{color: [0.0, 2.0, 1.0], scale: 0.5}",\
    particle2: "minecraft:dust{color: [0.0, 2.0, 1.0], scale: 0.5}",\
    on_hit: "ghost_action:item/gun/laser/hurt",\
    distance: 70\
}
execute if entity @s[tag=furious] anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/racasting/raycasting {\
    throughable: "#ghost_action:throughable",\
    particle1: "minecraft:dust{color: [0.0, 2.0, 1.0], scale: 0.5}",\
    particle2: "minecraft:dust{color: [0.0, 2.0, 1.0], scale: 0.5}",\
    on_hit: "ghost_action:item/gun/laser/hurt",\
    distance: 200\
}
function ghost_action:utils/recoil/recoil {min:30, max:55}