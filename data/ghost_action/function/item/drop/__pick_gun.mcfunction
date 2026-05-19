execute at @n[tag=source] run kill @n[tag=droped_gun, type=item_display]
execute at @s if items entity @s container.* paper[custom_data~{item_type: gun}] run function ghost_action:utils/each_inventory/each_inventory {\
    item: "paper[custom_data~{item_type: gun}]",\
    function: "ghost_action:item/drop/q_gun"\
}