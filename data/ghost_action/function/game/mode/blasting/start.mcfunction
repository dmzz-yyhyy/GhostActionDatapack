scoreboard players reset * blasting_coins
scoreboard players set red score 0
scoreboard players set blue score 0
scoreboard players set red blasting_filed_counter 0
scoreboard players set blue blasting_filed_counter 0
scoreboard players set timer blasting_timer 0
scoreboard players set * blasting_kill_count 0
scoreboard players reset * blasting_death
tag @a[tag=gaming] add blasting_online

clear @a

tellraw @a {"text":"-------------------------------------------","color":"blue"}
tellraw @a [{"translate":"action","fallback":"幽灵行动","color":"green"},":",{"translate": "mode.blasting.name","fallback":"爆破模式","color":"gold"}]
tellraw @a [{"translate":"team.attacking","fallback":"进攻方","color":"red"},{"translate":"mode.blasting.hint.need","fallback":"需要歼灭","color":"yellow"},{"translate":"team.defending","fallback":"防守方","color":"aqua"},{"translate":"mode.blasting.hint.orinstall","fallback":",或者安装炸弹直到炸弹爆炸即可获得胜利","color":"yellow"}]
tellraw @a [{"translate":"team.defending","fallback":"防守方","color":"aqua"},{"translate":"mode.blasting.hint.need","fallback":"需要歼灭","color":"yellow"},{"translate":"team.attacking","fallback":"进攻方","color":"red"},{"translate":"mode.blasting.hint.ordie","fallback":",或者将炸弹拆除即可获得胜利","color":"yellow"}]
tellraw @a {"translate":"mode.blasting.hint.get7","fallback":"获得胜利的一方获得一分,率先获得7分的队伍取得胜利","color":"yellow"}
tellraw @a {"text":"-------------------------------------------","color":"blue"}

data modify storage ghost_action:game_state game set value {\
    round: 1,\
    state: shop,\
}
function ghost_action:game/mode/blasting/round/start