$tag @a[nbt={UUID: $(source_UUID)}] add source
$damage @s $(damage) mob_attack by @n[tag=source]

execute at @s run playsound minecraft:item.trident.hit voice @s ~ ~ ~ 3 2
execute at @s run playsound minecraft:item.trident.hit voice @a[distance=..60,tag=!source] ~ ~ ~ 1 2

tag @a[tag=source] remove source