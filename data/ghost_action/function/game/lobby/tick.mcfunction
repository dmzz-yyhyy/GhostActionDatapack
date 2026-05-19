execute as @e[tag=red_team_join] at @s as @a[distance=..2, team=!red] at @s if block ~ ~-0.5 ~ red_concrete run function ghost_action:game/lobby/team_join/red
execute as @e[tag=blue_team_join] at @s as @a[distance=..2, team=!blue] at @s if block ~ ~-0.5 ~ light_blue_concrete run function ghost_action:game/lobby/team_join/blue

execute as @a if entity @s[team=!red] if entity @s[team=!blue] run team join spectator @s

