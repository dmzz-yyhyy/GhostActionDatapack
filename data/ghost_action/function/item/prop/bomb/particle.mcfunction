#particle minecraft:dust{color: [1.0, 0.0, 0.0], scale: 0.5} ^ ^ ^0.5 0 0 0 0 1 force @a[team=red]
#particle minecraft:dust{color: [1.0, 0.0, 0.0], scale: 0.5} ^ ^ ^-0.5 0 0 0 0 1 force @a[team=red]
#execute if entity @s[distance=..100] positioned ~ ~0.1 ~ rotated ~30 ~ run function ghost_action:item/prop/bomb/particle