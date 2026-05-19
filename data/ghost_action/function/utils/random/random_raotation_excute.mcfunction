$execute store result storage ghost_action:random rotation float 0.1 run random value $(min)..$(max)
$execute store result storage ghost_action:random facing float 0.1 run random value $(min)..$(max)
$data modify storage ghost_action:random function set value "$(function)"
function ghost_action:utils/random/_excuter with storage ghost_action:random