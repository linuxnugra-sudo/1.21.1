#> pk_no_cr:_main/tick
# Main tick

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Mode:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute if score $pk.no_cr.settings.mode pk.value matches 1 run function pk_no_cr:mode/proper/tick
execute unless score $pk.no_cr.settings.mode pk.value matches 1 run function pk_no_cr:mode/safe/tick