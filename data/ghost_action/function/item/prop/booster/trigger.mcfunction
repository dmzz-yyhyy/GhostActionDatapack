particle white_smoke ~ ~1 ~ 0.5 0.5 0.5 0 50
playsound entity.wind_charge.wind_burst block @a[distance=..40] ~ ~ ~ 4 1
item replace entity @s armor.head with minecraft:paper[minecraft:enchantments={"ghost_action:booster": 1}, minecraft:item_model=air, minecraft:item_name="", minecraft:tooltip_display={hide_tooltip: true}]
tag @s add using_booster
execute if score @s gun_use_cd matches ..12 run scoreboard players set @s gun_use_cd 12
schedule function ghost_action:item/prop/booster/clean_booster 2t