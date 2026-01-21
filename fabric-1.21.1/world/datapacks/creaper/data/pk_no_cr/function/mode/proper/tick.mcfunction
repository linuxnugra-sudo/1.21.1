#> pk_no_cr:mode/proper/tick

# Initialize creepers
execute as @e[type=creeper,tag=!pk.no_cr.pacified,tag=!pk.no_cr.ignore,nbt=!{Fuse:0s}] at @s run function pk_no_cr:mode/proper/creeper_pacify

# Check the creeper data
execute as @e[type=creeper,tag=pk.no_cr.pacified,tag=!pk.no_cr.powered,nbt={powered:1b}] at @s run function pk_no_cr:mode/proper/creeper_powered

# Check if the controller lost its vehicle
execute as @e[type=marker,tag=pk.no_cr.controller] at @s run function pk_no_cr:mode/proper/controller_check