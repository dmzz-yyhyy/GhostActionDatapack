execute if predicate ghost_action:is_moving positioned ~-0.5 ~-0.8 ~-0.5 if entity @s[dx=0,dy=0.6,dz=0] run return 1
execute positioned ~-0.3 ~-0.3 ~-0.3 if entity @s[dx=0,dy=0,dz=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0,dy=0,dz=0] run return 1
return 0