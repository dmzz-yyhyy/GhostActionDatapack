advancement revoke @s only ghost_action:game/lobby/start_game

execute \
    unless entity @a[team=red] \
    run tellraw @s {"translate":"team.error.number", "color":"red"}
execute \
    unless entity @a[team=blue] \
    run tellraw @s {"translate":"team.error.number", "color":"red"}
execute \
    unless entity @a[team=red] \
    run return run playsound minecraft:entity.villager.no voice @s ~ ~ ~ 1 1
execute \
    unless entity @a[team=blue] \
    run return run playsound minecraft:entity.villager.no voice @s ~ ~ ~ 1 1

playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1
function ghost_action:game/start_game with storage ghost_action:game_state current_mode