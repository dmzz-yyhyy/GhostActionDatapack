clear @a
data modify storage ghost_action:game_state is_gaming set value false
tag @e remove gaming
tp @a 0 2 0 -90 0
gamemode adventure @a
scoreboard objectives setdisplay sidebar
execute as @a run spawnpoint @s 0 2 0 -90 ~
time set midnight
$function ghost_action:game/mode/$(id)/end with storage ghost_action:game_state