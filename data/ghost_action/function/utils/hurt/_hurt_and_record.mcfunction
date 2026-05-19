$tellraw @a "$(damage)"
$damage @s $(damage) mob_attack by @n[nbt={UUID: $(source_UUID)}]
$function ghost_action:utils/hurt/_record {UUID: $(target_UUID), damage: $(damage)}