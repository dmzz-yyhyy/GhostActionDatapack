advancement revoke @s only ghost_action:game/lobby/change_mode
playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1

execute store result score add math run data get storage ghost_action:game_state mode_index
scoreboard players add add math 1
execute store result storage ghost_action:game_state mode_index int 1 run scoreboard players get add math
execute unless function ghost_action:game/lobby/mode_change/is_next_index_exsit run data modify storage ghost_action:game_state mode_index set value 0

function ghost_action:game/lobby/mode_change/_change_next_mode with storage ghost_action:game_state
function ghost_action:game/lobby/mode_change/sync_text