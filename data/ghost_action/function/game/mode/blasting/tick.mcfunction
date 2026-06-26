execute if score timer blasting_timer matches 1.. run scoreboard players remove timer blasting_timer 1
function ghost_action:game/mode/blasting/_tick with storage ghost_action:game_state game
execute if score timer blasting_timer matches 0 run function ghost_action:game/mode/blasting/_end with storage ghost_action:game_state game

execute as @a[tag=gaming,tag=!on_action,scores={kill_actionbar=..1}] if score @s gun_use_cd matches 1.. run title @s actionbar [{text: "⌖ ",color: red, bold: true}, {type:"score",score:{name:"@s",objective:blasting_kill_count},color:"yellow", bold: false}, {text:" | ", color: gray, bold: false}, {text: "💰 ", color: gold, bold: false},{type:"score",score:{name:"@s",objective:"blasting_coins"},color:"yellow", bold: false}, {text: "$", color: yellow, bold: false},{text:" |", color: gray, bold: false},{text:" 🔫 ", color: blue, bold: true}, {text: "❌", color: "red", bold: false}]
execute as @a[tag=gaming,tag=!on_action,scores={kill_actionbar=..1}] unless score @s gun_use_cd matches 1.. run title @s actionbar [{text: "⌖ ", color: red,bold: true}, {type:"score",score:{name:"@s",objective:blasting_kill_count},color:"yellow", bold: false}, {text:" | ", color: gray, bold: false}, {text: "💰 ", color: gold, bold: false},{type:"score",score:{name:"@s",objective:"blasting_coins"},color:"yellow", bold: false}, {text: "$", color: yellow, bold: false},{text:" |", color: gray, bold: false},{text:" 🔫 ", color: blue, bold: true}, {text: "✔", color: "green", bold: false}]
tag @a remove on_action

execute as @a[tag=gaming] \
    if score @s blasting_coin_kill matches 1.. \
    run scoreboard players add @s blasting_coins 25
execute as @a[tag=gaming] \
    if score @s blasting_coin_kill matches 1.. \
    run tellraw @s {"text":"+25￥","color": "gold"}
execute as @a[tag=gaming] \
    if score @s blasting_coin_kill matches 1.. \
    run scoreboard players reset @s blasting_coin_kill

#execute as @a[tag=gaming] at @s run spawnpoint @s ~ ~ ~ ~ ~

execute as @a[tag=gaming, team=red] \
    if score @s blasting_death matches 1.. \
    at @s \
    if items entity @s container.* paper[custom_data~{item:"prop/bomb"}] \
    run summon item ~ ~ ~ {Item: {id: paper, components:{"minecraft:custom_data":{item:"prop/bomb"}}}, PickupDelay:32767}
execute as @a[tag=gaming] \
    if score @s blasting_death matches 1.. \
    run gamemode spectator @s
execute as @a[tag=gaming] \
    if score @s blasting_death matches 1.. \
    run clear @s
execute as @a[tag=gaming] \
    if score @s blasting_death matches 1.. \
    run scoreboard players reset @s blasting_death

execute as @a[gamemode=spectator, team=red] run spectate @n[team=red, gamemode=!spectator] @s
execute as @a[gamemode=spectator, team=blue] run spectate @n[team=blue, gamemode=!spectator] @s
execute as @a[gamemode=spectator, team=red] at @s unless entity @a[team=red, gamemode=!spectator,distance=..1.5] run tp @s @n[team=red, gamemode=!spectator]
execute as @a[gamemode=spectator, team=blue] at @s unless entity @a[team=blue, gamemode=!spectator,distance=..1.5] run tp @s @n[team=blue, gamemode=!spectator]

function ghost_action:game/mode/blasting/crystal/tick

execute as @a \
    unless score @s blasting_online matches 0 \
    if data storage ghost_action:game_state {game: {state: shop}} \
    at @n[tag=blasting_blue_shop] \
    run tp @a[team=blue] ~ ~ ~ -90.0 0.0
execute as @a \
    unless score @s blasting_online matches 0 \
    if data storage ghost_action:game_state {game: {state: shop}} \
    at @n[tag=blasting_red_shop] \
    run tp @a[team=red] ~ ~ ~ -90.0 0.0
execute as @a \
    unless score @s blasting_online matches 0 \
    unless data storage ghost_action:game_state {game: {state: shop}} \
    run kill @s
scoreboard players reset * blasting_online
scoreboard players set @a blasting_online 0

execute as @a if score @s blasting_coins matches 701.. run scoreboard players set @s blasting_coins 700
