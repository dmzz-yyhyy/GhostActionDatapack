tellraw @a "Debug mode disenabled"
data modify storage ghost_action:game_state is_debug set value false
gamerule send_command_feedback false
gamerule reduced_debug_info true