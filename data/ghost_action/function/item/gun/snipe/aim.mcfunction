execute if entity @s[tag=!aim] if score @s gun_use_cd matches 1.. run return fail
execute if entity @s[tag=!aim] run item replace entity @s armor.head with paper[item_model="air",equippable={allowed_entities:player, equip_sound:{sound_id:""}, slot:"head", camera_overlay:"misc/spyglass_scope"}, enchantments={binding_curse:1}]
execute if entity @s[tag=!aim] run playsound item.spyglass.use voice @s ~ ~ ~ 2
execute if entity @s[tag=!aim] run attribute @s minecraft:movement_speed modifier add minecraft:aim -100 add_multiplied_total
execute if entity @s[tag=!aim] run attribute @s minecraft:jump_strength modifier add minecraft:aim -100 add_multiplied_total
execute if entity @s[tag=!aim] if score @s gun_use_cd matches ..5 run scoreboard players set @s gun_use_cd 5
execute if entity @s[tag=!aim] run return run tag @s add aim
item replace entity @s armor.head with air
playsound item.spyglass.stop_using voice @s ~ ~ ~ 2
attribute @s minecraft:movement_speed modifier remove minecraft:aim
attribute @s minecraft:jump_strength modifier remove minecraft:aim
tag @s remove aim