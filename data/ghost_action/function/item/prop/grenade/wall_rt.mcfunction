execute facing entity @s feet as @n[tag=grenade] run function ghost_action:utils/racasting/raycasting_throught_entity { \
    throughable: "#ghost_action:throughable",\
    particle1: "minecraft:block{block_state:'air'}",\
    particle2: "minecraft:block{block_state:'air'}",\
    on_hit: "ghost_action:item/prop/grenade/hurt",\
    distance: 30\
}
execute facing entity @s eyes as @n[tag=grenade] run function ghost_action:utils/racasting/raycasting_throught_entity { \
    throughable: "#ghost_action:throughable",\
    particle1: "minecraft:block{block_state:'air'}",\
    particle2: "minecraft:block{block_state:'air'}",\
    on_hit: "ghost_action:item/prop/grenade/hurt",\
    distance: 30\
}