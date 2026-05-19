effect clear @a
tag @a[team=red] add gaming
tag @a[team=blue] add gaming
gamemode spectator @a[team=spectator]
function ghost_action:game/tp_speactator with storage ghost_action:game_state current_map
time set day

tag @e remove blue
tag @e remove red
tag @a[team=red] add red
tag @a[team=blue] add blue
team empty blue
team empty red
team join red @a[tag=red]
team join blue @a[tag=blue]
tag @e remove blue
tag @e remove red

$function ghost_action:game/mode/$(id)/start with storage ghost_action:game_state
data modify storage ghost_action:game_state is_gaming set value true