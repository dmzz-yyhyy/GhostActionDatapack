title @a subtitle {translate:end.sub.blue, color: blue}
tellraw @a {text: "-----------------------------", color: blue}
tellraw @a [{score:{name: red, objective: score},color: red},{text: ":", color: yellow,bold: true},{text: "7", color: blue}]
tellraw @a [{translate: "hint.mvp", bold: true},{selector: "@a[team=blue]"}]
title @a title [{translate:"end.head","fallback":"%s","with":[{"text":"游戏结束"}],"color":"green"}]

tellraw @a [{translate: "end.head", "color":"green"}]
tellraw @a {translate: "end.blast", "color":"gold"}
execute as @a[tag=gaming] if score @s blasting_kill_count matches 0.. run tellraw @a [{"selector":"@s","color":"yellow"}," §f: ",{"score":{"name":"@s","objective": "blasting_kill_count"},"color":"aqua"}]
tellraw @a {"text": "-----------------------------", "color": "blue"}

function ghost_action:game/end_game with storage ghost_action:game_state current_mode