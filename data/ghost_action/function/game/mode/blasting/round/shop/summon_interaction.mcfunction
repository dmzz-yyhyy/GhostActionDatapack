
$data modify storage ghost_action:temp components set value $(components)
summon interaction ~ ~ ~ {Tags:[shop_interaction, shop_entity, source]}
data modify entity @n[tag=source] data set from storage ghost_action:temp components."minecraft:custom_data"
tag @e remove source
data remove storage ghost_action:temp components