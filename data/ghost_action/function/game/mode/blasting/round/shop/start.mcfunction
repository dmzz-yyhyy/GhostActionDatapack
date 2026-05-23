scoreboard players set timer blasting_timer 400

function ghost_action:item/clear_droped
function ghost_action:game/mode/blasting/round/clear_bossbar
bossbar set blasting_buy visible true

kill @e[tag=shop_entity]

execute positioned 331.5 10.0 320.0 run function ghost_action:game/mode/blasting/round/shop/summon_shop
execute positioned 331.5 10.0 384.0 run function ghost_action:game/mode/blasting/round/shop/summon_shop

$execute unless data storage ghost_action:game_state {game: {round: 1}} unless data storage ghost_action:game_state {game: {round: 7}} run title @a[tag=gaming] title [{"translate":"mode.blasting.round","color":"gold","with":[{text: "$(round)",color:"gold"}]}]

tellraw @a [{"translate":"mode.blasting.remain","color": "green"},{"text":"20, ","color": "yellow"},{"translate":"mode.blasting.buy","color": "green"}]
playsound block.note_block.pling block @a[tag=gaming] ~ ~ ~ 1 1 0.1

execute at @n[tag=blasting_blue_shop] run tp @a[team=blue] ~ ~ ~ -90.0 0.0
execute at @n[tag=blasting_red_shop] run tp @a[team=red] ~ ~ ~ -90.0 0.0
gamemode adventure @a[tag=gaming]

execute as @a[tag=gaming] unless items entity @s container.* paper[custom_data~{item_type: gun}] run function ghost_action:item/gun/pistol/give
execute as @a[team=blue] unless items entity @s container.* paper[custom_data~{item: "prop/kit"}] run function ghost_action:item/prop/kit/give

effect give @a instant_health 1 5 true

clear @a[tag=gaming] minecraft:paper[custom_data~{item:"prop/bomb"}]

execute at @n[tag=blasting_blue_shop] run tp @a[team=blue] ~ ~ ~ -90.0 0.0
execute at @n[tag=blasting_red_shop] run tp @a[team=red] ~ ~ ~ -90.0 0.0

item replace entity @a[team=blue] armor.chest with leather_chestplate[dyed_color=[0, 0.67, 1], enchantments={binding_curse: 1}, tooltip_display={hide_tooltip: true}, unbreakable={}, enchantment_glint_override=false]
item replace entity @a[team=red] armor.chest with leather_chestplate[dyed_color=[0.77, 0.2, 0.24], enchantments={binding_curse: 1}, tooltip_display={hide_tooltip: true}, unbreakable={}, enchantment_glint_override=false]

execute as @a[team=red] run attribute @s waypoint_receive_range base set 32767
execute as @a[team=blue] run attribute @s waypoint_receive_range base set 0