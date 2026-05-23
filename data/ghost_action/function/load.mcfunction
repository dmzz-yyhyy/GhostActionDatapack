tellraw @a {text:"Ghost Action datapack loaded!",color:"gold"}

scoreboard objectives add raycasting_disctance dummy
scoreboard objectives add kill_feedback totalKillCount
scoreboard objectives add kill_actionbar dummy
scoreboard objectives add death_trigger deathCount
scoreboard objectives add math dummy
scoreboard objectives add score dummy {translate: "scoreboard.score", color: "gold"}
scoreboard objectives add online dummy
execute if data storage ghost_action:game_state {is_gaming:0b} run scoreboard players set red score 0
execute if data storage ghost_action:game_state {is_gaming:0b} run scoreboard players set blue score 0
scoreboard players display name red score {"translate":"team.red", color: "red"}
scoreboard players display name blue score {"translate":"team.blue", color: "blue"}

team add blue {translate: team.blue, color: "blue"}
team modify blue color blue
team add red {translate: team.red, color: "red"}
team modify red color red
team add spectator {translate: team.spec, color: "gray"}
team modify spectator color gray

gamerule keep_inventory true
gamerule fire_spread_radius_around_player 0
gamerule immediate_respawn true
gamerule spawn_mobs false
gamerule spread_vines false
gamerule fall_damage false
gamerule fire_damage false
gamerule mob_griefing false
gamerule advance_weather false
gamerule advance_time false
gamerule natural_health_regeneration false
execute if data storage ghost_action:game_state {is_debug: true} run gamerule send_command_feedback true
execute if data storage ghost_action:game_state {is_debug: false} run gamerule send_command_feedback false