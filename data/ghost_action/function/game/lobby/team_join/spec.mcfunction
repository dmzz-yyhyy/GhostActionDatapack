advancement revoke @s only ghost_action:game/lobby/join_spec

playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1
title @s times 8t 12t 8t
title @s title [{"translate":"team.spec", "color": gray}]
title @s subtitle [{"translate":"team.joined"}]
team join spectator @s