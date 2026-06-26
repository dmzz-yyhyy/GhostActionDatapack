execute if score @s gun_use_cd matches 1.. run return fail
$scoreboard players set @s gun_use_cd $(cd)

execute at @s run playsound minecraft:item.trident.hit voice @s ~ ~ ~ 3 2
execute at @s run playsound minecraft:item.trident.hit voice @a[distance=..60,tag=!source] ~ ~ ~ 1 2
# 周围玩家听见击中音效
execute at @s run playsound minecraft:block.amethyst_block.break voice @a[distance=..80] ~ ~ ~ 2 1
execute at @s run playsound minecraft:item.trident.hit voice @a[distance=..80] ~ ~ ~ 2 1

execute if entity @s[tag=aim] if data entity @s {OnGround: true} anchored eyes positioned ^ ^ ^0.8 run function ghost_action:item/gun/snipe/_shoot
execute if entity @s[tag=aim] if data entity @s {OnGround: false} anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -150,\
    max: 150,\
    function: "ghost_action:item/gun/snipe/_shoot"\
}
execute unless predicate ghost_action:is_shift if entity @s[tag=!aim] if entity @s[tag=!furious] anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -900,\
    max: 900,\
    function: "ghost_action:item/gun/snipe/_shoot"\
}
execute if predicate ghost_action:is_shift if data entity @s {OnGround: false} if entity @s[tag=!aim] if entity @s[tag=!furious] anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -900,\
    max: 900,\
    function: "ghost_action:item/gun/snipe/_shoot"\
}
execute if predicate ghost_action:is_shift if data entity @s {OnGround: true} if entity @s[tag=!aim] if entity @s[tag=!furious] anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -200,\
    max: 200,\
    function: "ghost_action:item/gun/snipe/_shoot"\
}
execute if entity @s[tag=!aim] if entity @s[tag=!furious] if entity @s[tag=furious_snipe_first_shooted] anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -900,\
    max: 900,\
    function: "ghost_action:item/gun/snipe/_shoot"\
}
execute if entity @s[tag=!aim] if entity @s[tag=furious] if entity @s[tag=!furious_snipe_first_shooted] anchored eyes positioned ^ ^ ^0.8 run function ghost_action:item/gun/snipe/_shoot
execute if entity @s[tag=!aim] if entity @s[tag=furious] if entity @s[tag=!furious_snipe_first_shooted] anchored eyes positioned ^ ^ ^0.8 run tag @s add furious_snipe_first_shooted
function ghost_action:utils/recoil/recoil {min:30, max:40}
execute if entity @s[tag=aim] run function ghost_action:item/gun/snipe/aim