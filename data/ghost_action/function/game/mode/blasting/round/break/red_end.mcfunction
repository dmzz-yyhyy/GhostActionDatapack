title @a subtitle {translate:end.sub.red, color: red}
tellraw @a {text: "-----------------------------", color: red}
tellraw @a [{score:{name: blue,objective: score},color: blue},{text: ":", color: yellow,bold: true},{text: "7", color: red}]
tellraw @a [{translate: "hint.mvp", bold: true},{selector: "@a[team=red]"}]
title @a title [{translate:"end.head","fallback":"%s","with":[{"text":"游戏结束"}],"color":"green"}]

tellraw @a [{translate: "end.head", "color":"green"}]
tellraw @a {translate: "end.blast", "color":"gold"}
execute as @a[tag=gaming] if score @s blasting_kill_count matches 0.. run tellraw @a [{"selector":"@s","color":"yellow"}," §f: ",{"score":{"name":"@s","objective": "blasting_kill_count"},"color":"aqua"}]
tellraw @a {"text": "-----------------------------", "color": "red"}

function ghost_action:game/end_game with storage ghost_action:game_state current_mode