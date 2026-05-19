execute store result bossbar blasting_buy value run scoreboard players get timer blasting_timer

execute if score timer blasting_timer matches 200 run tellraw @a [{"translate":"mode.blasting.remain","fallback":"距离游戏开始还有","color": "green"},{"text":"10","color": "yellow"},{"text":"s","color": "green"}]
execute if score timer blasting_timer matches 200 as @a[tag=gaming] at @s run playsound block.note_block.pling block @a[tag=gaming] ~ ~ ~ 1 1 0.1

execute if score timer blasting_timer matches 100 run tellraw @a [{"translate":"mode.blasting.remain","fallback":"距离游戏开始还有","color": "green"},{"text":"5","color": "yellow"},{"text":"s","color": "green"}]
execute if score timer blasting_timer matches 100 as @a[tag=gaming] at @s run playsound block.note_block.pling block @a[tag=gaming] ~ ~ ~ 1 1 0.1

execute if score timer blasting_timer matches 80 run tellraw @a [{"translate":"mode.blasting.remain","fallback":"距离游戏开始还有","color": "green"},{"text":"4","color": "yellow"},{"text":"s","color": "green"}]
execute if score timer blasting_timer matches 80 as @a[tag=gaming] at @s run playsound block.note_block.pling block @a[tag=gaming] ~ ~ ~ 1 1 0.1

execute if score timer blasting_timer matches 60 run tellraw @a [{"translate":"mode.blasting.remain","fallback":"距离游戏开始还有","color": "green"},{"text":"3","color": "yellow"},{"text":"s","color": "green"}]
execute if score timer blasting_timer matches 60 as @a[tag=gaming] at @s run playsound block.note_block.pling block @a[tag=gaming] ~ ~ ~ 1 1 0.1

execute if score timer blasting_timer matches 40 run tellraw @a [{"translate":"mode.blasting.remain","fallback":"距离游戏开始还有","color": "green"},{"text":"2","color": "yellow"},{"text":"s","color": "green"}]
execute if score timer blasting_timer matches 40 as @a[tag=gaming] at @s run playsound block.note_block.pling block @a[tag=gaming] ~ ~ ~ 1 1 0.1

execute if score timer blasting_timer matches 20 run tellraw @a [{"translate":"mode.blasting.remain","fallback":"距离游戏开始还有","color": "green"},{"text":"1","color": "yellow"},{"text":"s","color": "green"}]
execute if score timer blasting_timer matches 20 as @a[tag=gaming] at @s run playsound block.note_block.pling block @a[tag=gaming] ~ ~ ~ 1 1 0.1