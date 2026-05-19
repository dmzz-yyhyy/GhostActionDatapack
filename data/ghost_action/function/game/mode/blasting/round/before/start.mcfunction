scoreboard players set timer blasting_timer 2000

function ghost_action:game/mode/blasting/round/clear_bossbar
bossbar set blasting_before_plant visible true

title @a[tag=gaming] title {"translate":"action","color": "blue"}
title @a[tag=gaming] subtitle {"text":"GO!","color": "aqua"}
execute as @a[tag=gaming] at @s run playsound entity.ender_dragon.flap block @s ~ ~ ~ 2 1.8

kill @e[tag=droped_bomb]
$execute at @n[tag=blasting_bomb_spawn, tag=$(id)] run function ghost_action:item/prop/bomb/summon_bomb
$execute at @n[tag=blasting_red_spawn, tag=$(id)] rotated ~ ~ run tp @a[team=red] ~ ~ ~ ~ ~
$execute at @n[tag=blasting_blue_spawn, tag=$(id)] rotated ~ ~ run tp @a[team=blue] ~ ~ ~ ~ ~

kill @e[tag=blasting_crystal]
execute as @e[tag=crystal_point] at @s run function ghost_action:game/mode/blasting/crystal/summon

effect give @a instant_health 1 5 true