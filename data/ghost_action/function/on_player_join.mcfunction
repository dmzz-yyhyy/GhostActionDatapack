execute if data storage ghost_action:game_state {is_gaming:0b} run playsound minecraft:ui.toast.challenge_complete ui @s ~ ~ ~ 0.2 1.1
execute if data storage ghost_action:game_state {is_gaming:0b} run title @s title {translate: title.welcome, color: aqua, fallback: "请正确安装材质包! (Please install resource pack correctly!)", bold: true}
execute if data storage ghost_action:game_state {is_gaming:0b} run tp @s 0 2 0 -90 0
execute if data storage ghost_action:game_state {is_gaming:1b} if entity @s[team=!blue, team=!red] run gamemode spectator @s
execute if data storage ghost_action:game_state {is_gaming:1b} if entity @s[team=!blue, team=!red] run team join spectator @s
execute if data storage ghost_action:game_state {is_gaming:1b} run function ghost_action:game/tp_speactator with storage ghost_action:game_state current_map

scoreboard players set @s kill_actionbar 0