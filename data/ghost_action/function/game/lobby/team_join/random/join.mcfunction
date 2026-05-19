execute as @r[team=!spectator,tag=!random] run function ghost_action:game/lobby/team_join/random/red
execute as @r[team=!spectator,tag=!random] run function ghost_action:game/lobby/team_join/random/blue

execute if entity @a[team=!spectator,tag=!random] run function ghost_action:game/lobby/team_join/random/join