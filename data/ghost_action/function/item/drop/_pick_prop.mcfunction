$tag @e[tag=droped_prop, nbt={interaction: {player: $(UUID)}}] add source
execute unless items entity @s weapon.mainhand paper[custom_data~{item_type: prop}] run function ghost_action:item/drop/__pick_prop with entity @n[tag=source] data
execute if items entity @s weapon.mainhand paper[custom_data~{item_type: prop}] run function ghost_action:item/drop/replace_prop
function ghost_action:item/drop/give_prop with entity @n[tag=source] data.item.components."minecraft:custom_data"
kill @e[tag=source]
data remove entity @n[tag=source] interaction
tag @e remove source