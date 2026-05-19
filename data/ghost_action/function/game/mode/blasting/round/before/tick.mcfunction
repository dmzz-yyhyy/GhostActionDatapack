execute store result bossbar blasting_before_plant value run scoreboard players get timer blasting_timer

execute unless entity @a[team=red, gamemode=!spectator] run function ghost_action:game/mode/blasting/round/blue_win
execute unless entity @a[team=blue, gamemode=!spectator] run function ghost_action:game/mode/blasting/round/red_win