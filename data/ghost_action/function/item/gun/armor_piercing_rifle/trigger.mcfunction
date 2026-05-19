execute if score @s gun_use_cd matches 1.. run return fail
$scoreboard players set @s gun_use_cd $(cd)
execute if entity @s[tag=furious] run scoreboard players remove @s gun_use_cd 2

execute at @s run playsound minecraft:entity.wither_skeleton.hurt voice @a[distance=..80] ~ ~ ~ 1 2
execute at @s run playsound minecraft:item.trident.hit voice @a[distance=..80] ~ ~ ~ 2 1

execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/racasting/raycasting_throught_entity { \
    throughable: "#ghost_action:armor_piercing_throughable",\
    particle1: "minecraft:dust{color: [1.0, 0.0, 0.5], scale: 0.8}",\
    particle2: "minecraft:dust{color: [0.0, 0.5, 0.5], scale: 0.8}",\
    on_hit: "ghost_action:item/gun/armor_piercing_rifle/hurt",\
    distance: 200\
}
function ghost_action:utils/recoil/recoil {min:30, max:40}
