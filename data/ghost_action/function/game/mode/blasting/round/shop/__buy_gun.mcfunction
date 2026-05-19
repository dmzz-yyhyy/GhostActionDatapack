$execute at @s store result score add math run data get entity @n[tag=shop_interaction, nbt={data: {item: "$(player_item)"}}] data.price
scoreboard players operation add math += @s blasting_coins
$execute unless score add math matches $(price).. at @s run playsound entity.villager.no voice @s ~ ~ ~ 1 1.5 0.1
$execute unless score add math matches $(price).. at @s run return run tellraw @s {translate: "mode.blasting.shop.failed.coins", color: red}
clear @s paper[custom_data~{item_type: gun}]
$function ghost_action:item/$(item)/give
playsound item.armor.equip_diamond block @s
$scoreboard players set reduce math $(price)
scoreboard players operation add math -= reduce math
scoreboard players operation @s blasting_coins = add math
data remove entity @n[tag=source] interaction