execute as @s[team=blue] at @s as @a[team=blue,distance=..10] at @s run effect give @s absorption 8 1 false
execute as @s[team=blue] at @s as @a[team=blue,distance=..10] at @s run particle end_rod ~ ~1.2 ~ 0.4 0.4 0.4 0 8 force @a
execute as @s[team=blue] at @s as @a[team=blue,distance=..10] at @s run title @s times 4t 8t 4t
execute as @s[team=blue] at @s as @a[team=blue,distance=..10] at @s run title @s title {"translate":"prop.team_shield.use","color":"yellow"}
execute as @s[team=red] at @s as @a[team=red,distance=..10] at @s run effect give @s absorption 8 1 true
execute as @s[team=red] at @s as @a[team=red,distance=..10] at @s run particle end_rod ~ ~1.2 ~ 0.4 0.4 0.4 0 8 force @a
execute as @s[team=red] at @s as @a[team=red,distance=..10] at @s run title @s times 4t 8t 4t
execute as @s[team=red] at @s as @a[team=red,distance=..10] at @s run title @s title {"translate":"prop.team_shield.use","color":"yellow"}
playsound minecraft:entity.wither.hurt voice @a[distance=..40] ~ ~ ~ 1 1.7