#> pk_no_cr:mode/safe/creeper_pacify

# Add the luck effect and nonexplosive
data modify entity @s ExplosionRadius set value 0b
effect give @s luck infinite 17 true
tag @s add pk.no_cr.pacified