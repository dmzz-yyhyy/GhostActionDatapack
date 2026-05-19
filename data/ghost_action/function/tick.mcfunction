execute as @a[scores={kill_feedback=1..}] at @s run function ghost_action:utils/kill_feedback/kill
execute as @a[scores={kill_actionbar=1..}] run scoreboard players remove @s kill_actionbar 1
execute as @a[scores={kill_actionbar=1}] run title @s actionbar ""

execute as @a[tag=gaming] run attribute @s minecraft:camera_distance base set 0
execute as @a[tag=!gaming] run attribute @s minecraft:camera_distance base reset
effect give @a saturation infinite 255 true
effect give @a[tag=!gaming] instant_health 1 5 true
execute as @a run attribute @s jump_strength base set 0.7
execute as @a run attribute @s movement_speed base set 0.15
execute as @a run attribute @s safe_fall_distance base set 100
execute as @a run attribute @s knockback_resistance base set 0.7
execute as @a run attribute @s waypoint_transmit_range base set 0

execute if data storage ghost_action:game_state {is_debug: false} as @a run attribute @s block_interaction_range base set 0
execute if data storage ghost_action:game_state {is_debug: true} as @a run attribute @s block_interaction_range base reset 
execute if data storage ghost_action:game_state {is_debug: false} as @a run attribute @s attack_damage base set 0
execute if data storage ghost_action:game_state {is_debug: true} as @a run attribute @s attack_damage base reset 
execute if data storage ghost_action:game_state {is_debug: false} as @a run gamerule reduced_debug_info true
execute if data storage ghost_action:game_state {is_debug: true} as @a run gamerule reduced_debug_info false

execute as @a \
    unless score @s online matches 0 \
    at @s \
    run function ghost_action:on_player_join
scoreboard players reset * online
scoreboard players set @a online 0
