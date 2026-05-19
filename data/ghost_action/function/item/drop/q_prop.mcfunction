execute if score @s prop_drop_counter matches 3.. run return fail
scoreboard players add @s prop_drop_counter 1
execute at @s rotated as @s run function ghost_action:utils/random/random_yaw_excute {\
    function: "ghost_action:item/drop/_q_prop",\
    min: -300,\
    max: 300,\
}
$item replace entity @s container.$(slot) with air
