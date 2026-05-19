$tag @e[tag=shop_interaction, nbt={interaction: {player: $(UUID)}}] add source
data modify storage ghost_action:temp data set from entity @n[tag=source] data
data modify storage ghost_action:temp data.player_item set value ""
data modify storage ghost_action:temp data.player_item set from entity @s SelectedItem.components."minecraft:custom_data".item
function ghost_action:game/mode/blasting/round/shop/__buy_gun with storage ghost_action:temp data
data remove storage ghost_action:temp data
data remove entity @n[tag=source] interaction
tag @e remove source