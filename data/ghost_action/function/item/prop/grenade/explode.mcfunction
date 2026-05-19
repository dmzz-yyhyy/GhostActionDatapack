playsound entity.generic.explode player @a ~ ~ ~ 3 1
playsound entity.witch.hurt player @a ~ ~ ~ 3 1
particle explosion_emitter ~ ~ ~ ~ ~ ~ 0 0
particle explosion_emitter ~-3.5 ~ ~ ~ ~ ~ 0 0
particle explosion_emitter ~3.5 ~ ~ ~ ~ ~ 0 0
particle explosion_emitter ~ ~ ~-3.5 ~ ~ ~ 0 0
particle explosion_emitter ~ ~ ~3.5 ~ ~ ~ 0 0

$tag @a[nbt={UUID: $(Thrower)}] add source
execute as @e[distance=..15, type=#ghost_action:shotable] run damage @s 2 mob_attack by @n[tag=source]
execute as @e[distance=..8, type=#ghost_action:shotable] run damage @s 3 mob_attack by @n[tag=source]
execute as @e[distance=..6, type=#ghost_action:shotable] run damage @s 4 mob_attack by @n[tag=source]
execute as @e[distance=..4, type=#ghost_action:shotable] run damage @s 4 mob_attack by @n[tag=source]
execute as @e[distance=..2, type=#ghost_action:shotable] run damage @s 10 mob_attack by @n[tag=source]

tag @a remove source
scoreboard players reset @s grenade_timer
kill @s