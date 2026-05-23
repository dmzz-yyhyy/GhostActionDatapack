execute as @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {item_type: gun}}}}] run data merge entity @s {PickupDelay:32767}
execute as @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {item_type: gun}}}, OnGround: true}] at @s run function ghost_action:item/drop/drop_gun

execute as @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {item_type: prop}}}}] run data merge entity @s {PickupDelay:32767}
execute as @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {item_type: prop}}}, OnGround: true}] at @s run function ghost_action:item/drop/drop_prop

execute as @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {item: "prop/kit"}}}}] on origin run function ghost_action:item/prop/kit/give
execute as @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {item: "prop/kit"}}}}] run kill @s