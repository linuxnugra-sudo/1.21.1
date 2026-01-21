#> pk_no_cr:mode/proper/controller_check

# If the controller doesn't have a creeper as vehicle anymore
execute if entity @s[predicate=!pk_no_cr:vehicle/any] run function pk_no_cr:mode/proper/controller_free

# If the creeper vehicle has been killed
tag @s add pk.current.controller
execute on vehicle if entity @s[nbt={Health:0f}] on passengers run kill @s[type=marker,tag=pk.current.controller]
tag @s remove pk.current.controller