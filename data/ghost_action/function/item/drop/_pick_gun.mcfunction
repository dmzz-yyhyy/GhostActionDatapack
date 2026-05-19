$tag @e[tag=droped_gun, nbt={interaction: {player: $(UUID)}}] add source
function ghost_action:item/drop/__pick_gun with entity @n[tag=source] data
function ghost_action:item/drop/give_gun with entity @n[tag=source] data.item.components."minecraft:custom_data"
playsound item.armor.equip_diamond ui @s ~ ~ ~ 1 1.6
kill @e[tag=source]
data remove entity @n[tag=source] interaction
tag @e remove source