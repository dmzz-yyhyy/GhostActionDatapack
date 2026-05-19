execute store result storage ghost_action:temp number int 1 run scoreboard players get @s boom_second_timer
data modify storage ghost_action:temp number set string storage ghost_action:temp number
execute \
    if score @s boom_second_timer matches ..9 \
    run data modify entity @s text.extra set value [\
        {text: "0", color: "red"},\
        {text: "0", color: "red"}\
    ]
execute \
    if score @s boom_second_timer matches ..9 \
    run data modify entity @s text.extra[1].text set from storage ghost_action:temp number
execute \
    if score @s boom_second_timer matches 10.. \
    run data modify entity @s text.extra set value [\
        {text: "0", color: "red"},\
    ]
execute \
    if score @s boom_second_timer matches 10.. \
    run data modify entity @s text.extra[0].text set from storage ghost_action:temp number