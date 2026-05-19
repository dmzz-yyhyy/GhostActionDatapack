data modify storage ghost_action:temp UUID set from entity @s UUID
$data modify storage ghost_action:temp particle1 set value "$(particle1)"
$data modify storage ghost_action:temp particle2 set value "$(particle2)"
$data modify storage ghost_action:temp on_hit set value "$(on_hit)"
$data modify storage ghost_action:temp distance set value $(distance)
$data modify storage ghost_action:temp throughable set value "$(throughable)"
data modify storage ghost_action:temp source_UUID set from entity @s UUID
data modify storage ghost_action:temp damage set from entity @s SelectedItem.components."minecraft:custom_data".damage
scoreboard players set raycasting_distance raycasting_disctance 0
tag @e remove hited
function ghost_action:utils/racasting/_test1 with storage ghost_action:temp
tag @e remove hited
data remove storage ghost_action:temp UUID
data remove storage ghost_action:temp particle1
data remove storage ghost_action:temp particle2
data remove storage ghost_action:temp on_hit
data remove storage ghost_action:temp distance
data remove storage ghost_action:temp throughable
data remove storage ghost_action:temp source_UUID
data remove storage ghost_action:temp damage