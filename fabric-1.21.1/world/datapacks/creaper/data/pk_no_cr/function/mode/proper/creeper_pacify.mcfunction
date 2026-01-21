#> pk_no_cr:mode/proper/creeper_pacify

# Initialize creeper
tag @s add pk.no_cr.pacified
data modify entity @s ExplosionRadius set value 0b

# Prepare controller
tag @s add pk.current.creeper
execute summon marker run function pk_no_cr:mode/proper/controller_initialize
tag @s remove pk.current.creeper