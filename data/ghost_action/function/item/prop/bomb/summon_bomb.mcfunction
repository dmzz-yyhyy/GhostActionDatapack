summon item_display ~ ~0.2 ~ {Tags:["droped_bomb"],item:{id:"paper",components:{"minecraft:item_model":"ghost_action:prop/bomb"}}}
execute as @e[tag=droped_bomb] at @s run function ghost_action:utils/random/random_yaw_excute {\
    function: "ghost_action:item/drop/_summon_gun",\
    min: -1800,\
    max: 1800,\
}
summon interaction ~ ~ ~ {Tags:[droped_bomb] ,width:0.5, height:0.5}
summon slime ~ ~ ~ {CustomName: {translate: "prop.bombpack.pickup", color: "yellow"}, CustomNameVisible:1b ,Tags:[droped_bomb] ,NoAI:1b, Invulnerable:1b, Silent:1b}
summon armor_stand ~ ~ ~ {Tags:[droped_bomb], Invisible:1b, Small:1b, Marker:1b}
attribute @e[type=slime,tag=droped_bomb,limit=1] scale base set 0.5
waypoint modify @e[type=armor_stand,tag=droped_bomb,limit=1] color white
waypoint modify @e[type=armor_stand,tag=droped_bomb,limit=1] style set ghost_action:bomb
attribute @e[type=armor_stand,tag=droped_bomb,limit=1] waypoint_transmit_range base set 32767
attribute @e[type=armor_stand,tag=droped_bomb,limit=1] scale base set 0.01
effect give @e[type=slime,tag=droped_bomb,limit=1] minecraft:invisibility infinite 0 true
team join red @e[tag=droped_bomb]