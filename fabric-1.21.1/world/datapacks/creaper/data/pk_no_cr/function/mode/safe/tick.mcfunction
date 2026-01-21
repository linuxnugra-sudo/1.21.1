#> pk_no_cr:mode/safe/tick

# Initialize creepers
execute as @e[type=creeper,tag=!pk.no_cr.pacified,tag=!pk.no_cr.ignore,nbt=!{Fuse:0s}] at @s run function pk_no_cr:mode/safe/creeper_pacify

# Check if the creeper turned powered
execute as @e[type=creeper,tag=pk.no_cr.pacified,tag=!pk.no_cr.powered,nbt={powered:1b}] at @s run function pk_no_cr:mode/safe/creeper_powered

# Check if a creeper exploded
execute as @e[type=area_effect_cloud,tag=!pk.no_cr.checked] at @s run function pk_no_cr:mode/safe/aec_check