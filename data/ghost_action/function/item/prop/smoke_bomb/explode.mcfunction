
$tag @a[nbt={UUID: $(Thrower)}] add source
playsound entity.generic.explode player @a ~ ~ ~ 3 1
playsound entity.witch.hurt player @a ~ ~ ~ 3 1
execute if entity @p[tag=source,team=red] run summon item_display ^ ^1.3 ^ {Tags:[smoke, smoke1, summon],billboard:"center",brightness:{sky:15,block:15},glow_color_override:-1,item:{id:"white_wool",components:{item_model: "ghost_action:misc/smoke_red"}}}
execute if entity @p[tag=source,team=red] run summon item_display ^ ^1.3 ^ {Tags:[smoke, smoke2, summon],billboard:"center",brightness:{sky:15,block:15},glow_color_override:-1,item:{id:"white_wool",components:{item_model: "ghost_action:misc/smoke_red"}}}

execute if entity @p[tag=source,team=blue] run summon item_display ^ ^1.3 ^ {Tags:[smoke, smoke1, summon],billboard:"center",brightness:{sky:15,block:15},glow_color_override:-1,item:{id:"white_wool",components:{item_model: "ghost_action:misc/smoke_blue"}}}
execute if entity @p[tag=source,team=blue] run summon item_display ^ ^1.3 ^ {Tags:[smoke, smoke2, summon],billboard:"center",brightness:{sky:15,block:15},glow_color_override:-1,item:{id:"white_wool",components:{item_model: "ghost_action:misc/smoke_blue"}}}

execute as @e[tag=summon] run scoreboard players set @s smoke_bomb_timer 0

tag @a remove source
tag @e remove summon
scoreboard players reset @s grenade_timer
kill @s