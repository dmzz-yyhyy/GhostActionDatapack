$tag @a[nbt={UUID: $(source_UUID)}] add source
execute at @n[tag=source] if entity @s[distance=..100] at @s run damage @s 14.2 mob_attack by @n[tag=source]


execute if entity @s[team=red] if entity @a[tag=source,team=blue] run function ghost_action:item/gun/reconnaissance_rifle/hit
execute if entity @s[team=blue] if entity @a[tag=source,team=red] run function ghost_action:item/gun/reconnaissance_rifle/hit

tag @a[tag=source] remove source 