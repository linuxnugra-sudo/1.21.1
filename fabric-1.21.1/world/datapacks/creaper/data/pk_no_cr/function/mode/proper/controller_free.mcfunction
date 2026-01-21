#> pk_no_cr:mode/proper/controller_free

# If the creeper exploded, note that:
# - Hostile mobs automatically despawn if they are located more than 128 blocks from the nearest player
# - They also have 1/800 chance to despawn each tick if they are located more than 32 blocks from the nearest player
# - A creeper can explode by being attacked by another entity when it has no target yet, but it is not likely to happen so far from a player
# - They can also be ignitied by a player just before this last one is teleported elsewhere (far enough) but this would rarely happen unintentionally
execute if entity @p[distance=..32] run function pk_no_cr:mode/proper/controller_create_explosion

# Remove controller
kill @s