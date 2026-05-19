$execute unless score @s blasting_coins matches $(price).. at @s run playsound entity.villager.no voice @s ~ ~ ~ 1 1.5 0.1
$execute unless score @s blasting_coins matches $(price).. at @s run return run tellraw @s {translate: "mode.blasting.shop.failed.coins", color: red}
execute store result score number math run execute if items entity @s container.* paper[minecraft:custom_data~{item_type: prop}]
execute if score number math matches 3.. at @s run playsound entity.villager.no voice @s ~ ~ ~ 1 1.5 0.1
execute if score number math matches 3.. at @s run return run tellraw @s {translate: "mode.blasting.shop.failed.full", color: red}
$function ghost_action:item/$(item)/give
$scoreboard players remove @s blasting_coins $(price)
data remove entity @n[tag=source] interaction