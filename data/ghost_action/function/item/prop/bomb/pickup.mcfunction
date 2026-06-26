advancement revoke @s only ghost_action:bomb_pickup
execute if entity @s[team=!red] run tellraw @s {"translate":"prop.bombpack.pickup.failed", "color":"red"}
execute if entity @s[team=!red] at @s run return run playsound minecraft:entity.villager.no voice @s ~ ~ ~ 1 1
tp @e[type=slime,tag=droped_bomb] ~ ~-999 ~
kill @e[tag=droped_bomb]
give @s paper[custom_data={type: item, item: "prop/bomb"}, item_name={translate: "prop.bombpack", color: "blue", bold: true}, custom_name={translate: "prop.bombpack", color: "blue", bold: true, italic: false}, lore=[{translate: "prop.bombpack.l1", color: "light_purple"}], item_model="ghost_action:prop/bomb", max_stack_size=1, consumable={sound: intentionally_empty, has_consume_particles: false, animation: none, consume_seconds: 999999999}, use_effects={can_sprint: true, speed_multiplier: 1}]
tellraw @s {"translate":"prop.bombpack.pickup.success", "color": "aqua"}