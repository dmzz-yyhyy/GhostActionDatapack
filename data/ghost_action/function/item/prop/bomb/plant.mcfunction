execute as @s at @s run playsound block.anvil.land block @a ~ ~ ~ 0.8 0.5 0.3
execute as @s at @s run summon item_display ~ ~0.2 ~ {Tags:["planted_bomb"],item:{id:"paper",components:{"minecraft:item_model":"ghost_action:prop/bomb"}}}
execute as @s at @s run summon text_display ~ ~0.6 ~ {Tags:["planted_bomb"],text: {translate: "00:", color: "red", extra: [{text: "40", color: "red"}]} ,Tags:[planted_bomb, source] ,background:0 ,shadow:1b ,billboard:center}
execute as @e[type=text_display, tag=source] run scoreboard players set @s boom_second_timer 40
execute as @e[type=text_display, tag=source] run scoreboard players set @s boom_sound_timer 0
tag @e remove source

function ghost_action:game/mode/blasting/round/on_planted