scoreboard objectives add blasting_coins dummy
scoreboard objectives add blasting_timer dummy
scoreboard objectives add blasting_coin_kill totalKillCount
scoreboard objectives add blasting_filed_counter dummy
scoreboard objectives add blasting_death deathCount
scoreboard objectives add blasting_kill_count totalKillCount
scoreboard objectives add blasting_crystal_timer dummy
scoreboard objectives add blasting_online dummy

bossbar add blasting_buy {translate: "mode.blasting.name", color: "yellow", extra:[{"text": ":"}, {"translate": mode.blasting.state.buy, "color": "green"}]}
bossbar set blasting_buy color green
bossbar set blasting_buy max 400

bossbar add blasting_before_plant {translate: "mode.blasting.name", color: "yellow", extra:[{"text": ":"}, {"translate": mode.blasting.state.before, "color": "aqua"}]}
bossbar set blasting_before_plant color blue
bossbar set blasting_before_plant max 2000

bossbar add blasting_planted {translate: "mode.blasting.name", color: "yellow", extra:[{"text": ":"}, {"translate": mode.blasting.state.after, "color": "red"}]}
bossbar set blasting_planted color red
bossbar set blasting_planted max 800