$tag @e[tag=shop_interaction, nbt={interaction: {player: $(UUID)}}] add source
function ghost_action:game/mode/blasting/round/shop/__buy_prop with entity @n[tag=source] data
data remove entity @n[tag=source] interaction
tag @e remove source