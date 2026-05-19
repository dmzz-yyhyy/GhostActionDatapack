$tag @e[tag=droped_gun, nbt={interaction: {player: $(UUID)}}] add source
function ghost_action:item/drop/__pick_prop with entity @n[tag=source] data
function ghost_action:item/drop/give_prop with entity @n[tag=source] data.item.components."minecraft:custom_data"
kill @e[tag=source]
data remove entity @n[tag=source] interaction
tag @e remove source