execute if score @s gun_use_cd matches 1.. run return fail
$scoreboard players set @s gun_use_cd $(cd)

execute if entity @s[tag=furious] run scoreboard players remove @s gun_use_cd 4

execute at @s run playsound minecraft:item.firecharge.use voice @a[distance=..40] ~ ~ ~ 2 2
execute at @s run playsound minecraft:item.trident.hit voice @a[distance=..40] ~ ~ ~ 2 1

execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -200,\
    max: 200,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}
execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -200,\
    max: 200,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}
execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -200,\
    max: 200,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}
execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -200,\
    max: 200,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}
execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -200,\
    max: 200,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}
execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -200,\
    max: 200,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}
execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -200,\
    max: 200,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}
execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -200,\
    max: 200,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}
execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -50,\
    max: 50,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}
execute anchored eyes positioned ^ ^ ^0.8 run function ghost_action:utils/random/random_raotation_excute {\
    min: -50,\
    max: 50,\
    function: "ghost_action:item/gun/shotgun/_shot"\
}

execute as @e[tag=hit_sound] at @s run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1
tag @a remove hit_sound

function ghost_action:utils/recoil/recoil {min:30, max:40}