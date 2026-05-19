execute at @s run playsound minecraft:entity.wind_charge.throw voice @a[distance=..40] ~ ~ ~ 2 2
summon armor_stand 0.0 0.0 0.0 {Tags:["vector"], NoGravity: true, Marker: true, Invulnerable: true}
execute rotated as @s as @n[tag=vector] run rotate @s ~ ~
execute rotated as @s as @n[tag=vector] at @s run tp @s ^ ^ ^1.7
execute anchored eyes run summon minecraft:item ^ ^-0.35 ^ {Tags: [smoke_bomb, throw],Motion:[0.0d,0.0d,0.0d],Invulnerable:1b,PickupDelay:32767,Item:{id:"minecraft:snowball",count:1b, components: {item_model: "ghost_action:prop/smoke_bomb", max_stack_size: 1}}, CustomName: {"translate":"prop.smoke_bomb", "color": "blue"}}
data modify entity @n[tag=throw] Motion set from entity @n[tag=vector] Pos
data modify entity @n[tag=throw] Thrower set from entity @s UUID
kill @e[tag=vector]
tag @e remove throw