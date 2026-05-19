tellraw @a "Debug mode enabled"
data modify storage ghost_action:game_state is_debug set value true
gamerule send_command_feedback true
gamerule reduced_debug_info false