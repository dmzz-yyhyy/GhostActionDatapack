$summon item_display ~ ~0.2 ~ {Tags:["droped_gun", "temp"],item:{id:"paper",components:{"minecraft:item_model":"$(model)"}}}
execute as @e[tag=droped_gun,tag=temp] at @s run function ghost_action:utils/random/random_yaw_excute {\
    function: "ghost_action:item/drop/_summon_gun",\
    min: -1800,\
    max: 1800,\
}
data modify entity @n[tag=droped_gun, tag=temp] transformation.left_rotation set value [0.70710677f,0.0f,0.0f,0.70710677f] 
data modify entity @n[tag=droped_gun, tag=temp] transformation.translation set value [0.0f,-0.2f,0.0f] 
$summon interaction ~ ~ ~ {Tags:[droped_gun] ,width:1, height:0.25, data: {item: $(item)}}
tag @e remove temp