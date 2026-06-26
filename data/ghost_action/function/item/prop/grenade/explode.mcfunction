playsound entity.generic.explode player @a ~ ~ ~ 3 1
playsound entity.witch.hurt player @a ~ ~ ~ 3 1
particle explosion_emitter ~ ~ ~ ~ ~ ~ 0 0
particle explosion_emitter ~-3.5 ~ ~ ~ ~ ~ 0 0
particle explosion_emitter ~3.5 ~ ~ ~ ~ ~ 0 0
particle explosion_emitter ~ ~ ~-3.5 ~ ~ ~ 0 0
particle explosion_emitter ~ ~ ~3.5 ~ ~ ~ 0 0

tag @s add grenade 
$tag @a[nbt={UUID: $(Thrower)}] add source
team modify blue friendlyFire true
team modify red friendlyFire true
execute as @e[distance=..15, type=#ghost_action:shotable] if function ghost_action:item/prop/grenade/wall_rt run damage @s 2 mob_attack by @n[tag=source]
team modify blue friendlyFire false
team modify red friendlyFire false

tag @a remove source
tag @a remove grenade
scoreboard players reset @s grenade_timer
kill @s