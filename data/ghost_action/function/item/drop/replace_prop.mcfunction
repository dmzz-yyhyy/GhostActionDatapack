data modify storage ghost_action:temp item set from entity @s SelectedItem
execute at @s rotated as @s run function ghost_action:utils/random/random_yaw_excute {\
    function: "ghost_action:item/drop/_q_prop",\
    min: -300,\
    max: 300,\
}
item replace entity @s weapon.mainhand with air
