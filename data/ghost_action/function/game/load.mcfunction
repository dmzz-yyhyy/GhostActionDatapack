data modify storage ghost_action:game_state all_modes set value [\
    {\
        id: blasting,\
        name: {translate: "mode.blasting.name", color: "yellow", bold: true},\
        maps: [\
            {id: dust2, name: {translate: "mode.blasting.map.dust2", color: "green", bold: true}},\
            {id: haven, name: {translate: "mode.blasting.map.haven", color: "green", bold: true}},\
            {id: ascent, name: {translate: "mode.blasting.map.ascent", color: "green", bold: true}},\
        ]\
    },\
    {id: team_death, name: {translate: "mode.team.death.name", color: "yellow", bold: true}}\
]

execute unless data storage ghost_action:game_state mode_index run data modify storage ghost_action:game_state mode_index set value 0
function ghost_action:game/lobby/mode_change/sync_text

scoreboard objectives add health health
scoreboard objectives setdisplay list health