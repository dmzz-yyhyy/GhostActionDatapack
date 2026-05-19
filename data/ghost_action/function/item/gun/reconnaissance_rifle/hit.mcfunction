execute unless function ghost_action:item/prop/furious/is run effect give @s minecraft:glowing 3 1 true
execute if function ghost_action:item/prop/furious/is run effect give @s minecraft:glowing 5 1 true

execute as @a[tag=source] at @s run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1
execute as @a[tag=source] at @s run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.8 1