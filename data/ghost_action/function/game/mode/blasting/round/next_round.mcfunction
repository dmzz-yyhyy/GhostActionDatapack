execute store result score add math run data get storage ghost_action:game_state game.round
scoreboard players add add math 1

execute store result storage ghost_action:game_state game.round int 1 run scoreboard players get add math
data modify storage ghost_action:game_state game.state set value break
function ghost_action:game/mode/blasting/round/break/start with storage ghost_action:game_state game