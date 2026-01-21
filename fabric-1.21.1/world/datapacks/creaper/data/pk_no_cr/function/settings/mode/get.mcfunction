#> pk_no_cr:settings/mode/get

# Log the current mode
#   Safe (#0 | default)
execute unless score $pk.no_cr.settings.mode pk.value matches 1 run tellraw @s [{"text": "Mode","color": "yellow"},{"text": " is currently set on ","color": "gray"},{"text": "Safe","color": "yellow"}]
#   Proper (#1)
execute if score $pk.no_cr.settings.mode pk.value matches 1 run tellraw @s [{"text": "Mode","color": "yellow"},{"text": " is currently set on ","color": "gray"},{"text": "Proper","color": "yellow"}]