$tag @a[nbt={UUID: $(source_UUID)}] add source
execute at @n[tag=source] if entity @s[distance=..80] run damage @s 4 mob_attack by @n[tag=source]

execute if entity @s[team=red] as @a[tag=source,team=blue] at @s run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1
execute if entity @s[team=blue] as @a[tag=source,team=red] at @s run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1

tag @a[tag=source] remove source