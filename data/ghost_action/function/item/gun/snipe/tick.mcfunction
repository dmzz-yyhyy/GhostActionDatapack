execute as @a[tag=aim] unless data entity @s {SelectedItem: {components: {"minecraft:custom_data": {item: "gun/snipe"}}}} run function ghost_action:item/gun/snipe/aim

execute as @a if items entity @s weapon.mainhand paper[custom_data~{item: "gun/snipe"}] if score @s gun_use_cd matches 3 at @s run playsound item.crossbow.loading_end block @s ~ ~ ~ 3 1.5

execute as @a[tag=aim] at @s run particle end_rod ^ ^1.65 ^1 ~ ~ ~ 0 0 force @a[tag=!aim]