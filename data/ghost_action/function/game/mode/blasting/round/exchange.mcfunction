tag @a[team=blue] add blue
team join blue @a[team=red]
team join red @a[tag=blue]
tag @a[team=red] remove blue

scoreboard players operation number math = red score
scoreboard players operation red score = blue score 
scoreboard players operation blue score = number math

scoreboard players operation number math = red blasting_filed_counter
scoreboard players operation red blasting_filed_counter = blue blasting_filed_counter 
scoreboard players operation blue blasting_filed_counter = number math 

function ghost_action:game/mode/blasting/round/update_bossbar_name

title @a[tag=gaming] title {"translate":"mode.blasting.name", "color":"yellow"}
title @a[team=spectator] title {"translate":"mode.blasting.name", "color":"yellow"}
title @a[tag=gaming] subtitle [{"translate":"mode.blasting.round","color":"gold","with":[{text: "7",color:"gold"}]}]

scoreboard players reset * blasting_coins
clear @a[tag=gaming]

scoreboard players add @a[tag=gaming] blasting_coins 35