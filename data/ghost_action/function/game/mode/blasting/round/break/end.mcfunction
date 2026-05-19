kill @e[tag=droped_bomb]
execute if data storage ghost_action:game_state {game: {round: 7}} run function ghost_action:game/mode/blasting/round/exchange

execute if score blue score matches 7.. run return run function ghost_action:game/mode/blasting/round/break/blue_end
execute if score red score matches 7.. run return run function ghost_action:game/mode/blasting/round/break/red_end

data modify storage ghost_action:game_state game.state set value shop
function ghost_action:game/mode/blasting/round/shop/start with storage ghost_action:game_state game
