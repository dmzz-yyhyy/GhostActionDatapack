advancement revoke @s only ghost_action:game/lobby/change_map
playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1

execute store result score add math run data get storage ghost_action:game_state map_index
scoreboard players add add math 1
execute store result storage ghost_action:game_state map_index int 1 run scoreboard players get add math
execute unless function ghost_action:game/lobby/map_change/is_next_index_exsit run data modify storage ghost_action:game_state map_index set value 0

function ghost_action:game/lobby/map_change/_change_next_map with storage ghost_action:game_state
function ghost_action:game/lobby/map_change/sync_text