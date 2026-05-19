scoreboard players reset @s boom_second_timer
scoreboard players reset @s boom_micro_second_timer
scoreboard players reset @s boom_sound_timer
playsound entity.generic.explode player @a ~ ~ ~ 100 1
particle explosion_emitter ~ ~ ~ ~ ~ ~ 0 0
particle explosion_emitter ~-3.5 ~ ~ ~ ~ ~ 0 0
particle explosion_emitter ~3.5 ~ ~ ~ ~ ~ 0 0
particle explosion_emitter ~ ~ ~-3.5 ~ ~ ~ 0 0
particle explosion_emitter ~ ~ ~3.5 ~ ~ ~ 0 0
kill @e[tag=planted_bomb, distance=..0.5]