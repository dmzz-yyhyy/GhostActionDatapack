playsound minecraft:entity.wind_charge.throw voice @a[distance=..40] ~ ~ ~ 2 1
summon armor_stand 0.0 0.0 0.0 {Tags:["vector"], NoGravity: true, Marker: true, Invulnerable: true}
execute rotated as @s as @n[tag=vector] run rotate @s ~ ~
execute rotated as @s as @n[tag=vector] at @s run tp @s ^ ^ ^2.5

summon armor_stand ~ ~ ~ {Tags:[minecart_arm], Invulnerable:1b, Invisible: true}
summon minecart ~ ~ ~ {Tags:[minecart], Invulnerable:1b, Glowing:1b}
attribute @n[tag=minecart_arm] scale base set 0.5
attribute @n[tag=minecart_arm] gravity base set 0.2
ride @n[tag=minecart] mount @n[tag=minecart_arm]
ride @s mount @n[tag=minecart]
data modify entity @n[tag=minecart_arm] Motion set from entity @n[tag=vector] Pos
kill @e[tag=vector]