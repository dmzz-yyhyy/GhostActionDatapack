$execute if score raycasting_distance raycasting_disctance matches $(distance).. run return run scoreboard players set raycasting_distance raycasting_disctance 0
$particle $(particle1) ~ ~ ~ 0 0 0 0 1 force

$execute if data storage ghost_action:temp {entity_through: true} as @n[type=#ghost_action:shotable, nbt=!{UUID: $(UUID)}, gamemode=!spectator] if entity @s[tag=!hited] if function ghost_action:utils/racasting/hitbox at @s run function ghost_action:utils/racasting/_on_hit with storage ghost_action:temp
$execute unless data storage ghost_action:temp entity_through as @n[type=#ghost_action:shotable, nbt=!{UUID: $(UUID)}, gamemode=!spectator] if entity @s[tag=!hited] if function ghost_action:utils/racasting/hitbox at @s run return run function ghost_action:utils/racasting/_on_hit with storage ghost_action:temp

$execute unless block ~ ~ ~ $(throughable) run return fail
scoreboard players add raycasting_distance raycasting_disctance 1
execute positioned ^ ^ ^0.5 run function ghost_action:utils/racasting/_test2 with storage ghost_action:temp