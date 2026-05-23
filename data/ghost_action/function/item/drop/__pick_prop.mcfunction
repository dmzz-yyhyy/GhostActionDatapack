execute at @n[tag=source] run kill @n[tag=droped_prop, type=item_display]
scoreboard players set @s prop_drop_counter 0
execute at @s if items entity @s container.* paper[custom_data~{item_type: prop}] run function ghost_action:utils/each_inventory/each_inventory {\
    item: "paper[custom_data~{item_type: prop}]",\
    function: "ghost_action:item/drop/q_prop"\
}
scoreboard players reset @s prop_drop_counter