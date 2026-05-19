playsound entity.player.levelup voice @a[distance=..65] ~ ~ ~ 2 1.8 0.1
scoreboard players reset @e[tag=planted_bomb, distance=..1.5] boom_second_timer
scoreboard players reset @e[tag=planted_bomb, distance=..1.5] boom_micro_second_timer
scoreboard players reset @e[tag=planted_bomb, distance=..1.5] boom_sound_timer
kill @e[tag=planted_bomb, distance=..1.5]

function ghost_action:game/mode/blasting/round/on_unpacked