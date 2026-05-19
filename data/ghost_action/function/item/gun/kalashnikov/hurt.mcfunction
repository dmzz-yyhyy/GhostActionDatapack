$tag @a[nbt={UUID: $(source_UUID)}] add source
data modify storage ghost_action:better_hurt_arg source_UUID set from entity @n[tag=source] UUID
data modify storage ghost_action:better_hurt_arg target_UUID set from entity @s UUID
data modify storage ghost_action:better_hurt_arg damage set value 2.6
execute at @n[tag=source] if entity @s[distance=..8] run damage @s 2.6 mob_attack by @n[tag=source]
execute at @n[tag=source] if entity @s[distance=8..18] run damage @s 1.8 mob_attack by @n[tag=source]
execute at @n[tag=source] if entity @s[distance=18..25] run damage @s 1.4 mob_attack by @n[tag=source]

execute if entity @s[team=red] as @a[tag=source,team=blue] at @s run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1
execute if entity @s[team=blue] as @a[tag=source,team=red] at @s run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1

tag @a[tag=source] remove source