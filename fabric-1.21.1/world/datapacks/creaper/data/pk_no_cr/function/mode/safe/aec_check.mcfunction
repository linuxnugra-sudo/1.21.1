#> pk_no_cr:mode/safe/aec_check

tag @s add pk.no_cr.checked
execute if entity @s[tag=!pk.no_cr.ignore,nbt={potion_contents:{custom_effects:[{id:"minecraft:luck",amplifier:17b}]}}] run function pk_no_cr:mode/safe/aec_create_explosion