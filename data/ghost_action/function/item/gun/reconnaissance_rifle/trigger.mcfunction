execute if score @s gun_use_cd matches 1.. run return fail
$scoreboard players set @s gun_use_cd $(cd)

execute if entity @s[tag=furious] run scoreboard players remove @s gun_use_cd 5

execute at @s run playsound minecraft:block.end_portal_frame.fill voice @a[distance=..80] ~ ~ ~ 2 1
execute at @s run playsound minecraft:item.trident.hit voice @a[distance=..80] ~ ~ ~ 2 1

execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/racasting/raycasting {\
    throughable: "#ghost_action:throughable",\
    particle1: "minecraft:glow",\
    particle2: "minecraft:glow",\
    on_hit: "ghost_action:item/gun/reconnaissance_rifle/hurt",\
    distance: 200\
}

function ghost_action:utils/recoil/recoil {min:50, max:65}