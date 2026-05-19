execute at @s rotated as @s run function ghost_action:utils/random/random_yaw_excute {\
    function: "ghost_action:item/drop/_q_gun",\
    min: -300,\
    max: 300,\
}
$item replace entity @s container.$(slot) with air
