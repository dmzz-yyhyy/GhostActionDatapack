execute unless data storage ghost_action:game_state {current_mode: {id: blasting}, game: {state: before}} run return fail

data modify storage ghost_action:game_state game.state set value after
function ghost_action:game/mode/blasting/round/after/start