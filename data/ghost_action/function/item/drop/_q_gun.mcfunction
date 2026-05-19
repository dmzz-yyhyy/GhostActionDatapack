summon armor_stand 0.0 0.0 0.0 {Tags:["vector"], NoGravity: true, Marker: true, Invulnerable: true}
execute as @n[tag=vector] run rotate @s ~ ~
execute rotated as @s as @n[tag=vector] at @s run tp @s ^ ^0.1 ^0.1
summon item ~ ~1 ~ {Tags:[gun_item, temp], PickupDelay:32767, Item: {id: "paper"}}
data modify entity @n[tag=gun_item, tag=temp] Item set from storage ghost_action:temp item
data modify entity @n[tag=gun_item, tag=temp] Motion set from entity @n[tag=vector] Pos
tag @e remove temp
kill @e[tag=vector]