data modify storage ghost_action:temp item set from entity @s Item
data modify storage ghost_action:temp model set from entity @s Item.components."minecraft:item_model"
function ghost_action:item/drop/summon_prop with storage ghost_action:temp

kill @s