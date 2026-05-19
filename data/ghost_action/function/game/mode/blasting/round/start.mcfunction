scoreboard players set timer blasting_timer 400

scoreboard players set red score 0
scoreboard players set blue score 0
function ghost_action:game/mode/blasting/round/update_bossbar_name

title @a[tag=gaming] title {"translate":"mode.blasting.name", "color":"yellow"}
title @a[team=spectator] title {"translate":"mode.blasting.name", "color":"yellow"}
title @a[tag=gaming] subtitle [{"translate":"mode.blasting.round","color":"gold","with":[{text: "1",color:"gold"}]}]
tellraw @a[tag=gaming] [{"translate":"mode.blasting.round.1", "color":"green"},{"text":"+35￥","color":"yellow"}]
scoreboard players add @a[tag=gaming] blasting_coins 35

function ghost_action:game/mode/blasting/round/shop/start with storage ghost_action:game_state game