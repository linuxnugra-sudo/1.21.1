#> pk_no_cr:settings/mode/set
#
# @input args
#   mode: string
#       Can be either "safe" or "proper"
#
# Example:
#   function pk_no_cr:settings/mode/set {mode:"safe"}

$data modify storage pk:common temp.mode set value $(mode)

# Update mode
#   @return proper (#1)
execute if data storage pk:common temp{mode:"proper"} run tellraw @s [{"text": "Mode","color": "yellow"},{"text": " has been changed to ","color": "gray"},{"text": "Proper","color": "yellow"}]
execute if data storage pk:common temp{mode:"proper"} run return run scoreboard players set $pk.no_cr.settings.mode pk.value 1
#   @continue safe (#0 | default)
tellraw @s [{"text": "Mode","color": "yellow"},{"text": " has been changed to ","color": "gray"},{"text": "Safe","color": "yellow"}]
scoreboard players set $pk.no_cr.settings.mode pk.value 0