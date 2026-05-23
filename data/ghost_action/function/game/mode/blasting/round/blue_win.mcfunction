title @a times 1t 40t 1t
title @a title {"translate":"end.sub.blue","fallback":"蓝队获胜","color": "aqua"}

scoreboard players add blue score 1
function ghost_action:game/mode/blasting/round/update_bossbar_name

scoreboard players add @a[team=blue] blasting_coins 150
tellraw @a[team=blue] [{"translate":"win.for","fallback":"获胜补贴","color":"green"},{"text":"+150￥","color":"yellow"}]

data modify storage ghost_action:game_state game.last_winner set value blue
scoreboard players set blue blasting_filed_counter 0 
scoreboard players add red blasting_filed_counter 1

execute if score red blasting_filed_counter matches 1 run scoreboard players add @a[team=red] blasting_coins 75
execute if score red blasting_filed_counter matches 1 run tellraw @a[team=red] [{"translate":"mode.blasting.failed.first","color":"red"},{"text":"+75￥","color":"gold"}]
execute if score red blasting_filed_counter matches 2 run scoreboard players add @a[team=red] blasting_coins 100
execute if score red blasting_filed_counter matches 2 run tellraw @a[team=red] [{"translate":"mode.blasting.failed.second","color":"yellow"},{"text":"+100￥","color":"gold"}]
execute if score red blasting_filed_counter matches 3.. run scoreboard players add @a[team=red] blasting_coins 125
execute if score red blasting_filed_counter matches 3.. run tellraw @a[team=red] [{"translate":"mode.blasting.failed.max","color":"green"},{"text":"+125￥","color":"gold"}]

function ghost_action:game/mode/blasting/round/next_round