$tag @e[nbt={UUID: $(target_UUID)}] add target
$execute as @n[tag=target] if data entity @s {HurtTime:0s} run return run function ghost_action:utils/hurt/_hurt_and_record {damage: $(damage), source_UUID: $(source_UUID), target_UUID: $(target_UUID)}

$function ghost_action:utils/hurt/_get_record {UUID: $(target_UUID)}
execute store result score add math run data get storage ghost_action:temp damage
$data modify storage ghost_action:temp damage set value $(damage)
execute store result storage ghost_action:temp number double 1 run data get storage ghost_action:temp damage 100
function ghost_action:utils/hurt/_add_score with storage ghost_action:temp
execute store result storage ghost_action:temp damage float 0.01 run scoreboard players get add math
execute store result storage ghost_action:temp damage float 0.01 run scoreboard players get add math
$data modify storage ghost_action:temp source_UUID set value $(source_UUID)
$data modify storage ghost_action:temp target_UUID set value $(target_UUID)

function ghost_action:utils/hurt/_hurt_and_record with storage ghost_action:temp

data remove storage ghost_action:temp number
data remove storage ghost_action:temp damage
data remove storage ghost_action:temp source_UUID
data remove storage ghost_action:temp target_UUID
tag @e remove target