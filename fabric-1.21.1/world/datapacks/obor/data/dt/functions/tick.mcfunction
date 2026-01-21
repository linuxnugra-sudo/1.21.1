# main logic

tag @e[type=minecraft:marker,tag=dt.light.mark] add dt.expiredlight

execute as @e[tag=dt.lit,type=#dt:creeperandplayer] at @s positioned ~ ~1 ~ run function dt:light
execute as @e[tag=dt.lit,type=!#dt:creeperandplayer] at @s positioned ~ ~ ~ run function dt:light
execute as @e[type=minecraft:marker,tag=dt.expiredlight] at @s run function dt:del

### marking whatever has to be lit (you may add your own glowing entity by giving them the tag dt.lit!)

# mobs holding glowing items
execute unless score mobsitemsglow dt.config matches 0 as @e[type=!minecraft:player,type=!creeper,type=!item,type=!blaze] at @s if predicate dt:holdinglight run tag @s add dt.lit
execute unless score mobsitemsglow dt.config matches 0 as @e[type=!minecraft:player,type=!creeper,type=!item,type=!blaze] at @s unless predicate dt:holdinglight run tag @s remove dt.lit
execute if score mobsitemsglow dt.config matches 0 as @e[type=!minecraft:player,type=!creeper,type=!item,type=!blaze] at @s if predicate dt:holdinglight run tag @s remove dt.lit

# mobs set on fire
execute unless score fireglow dt.config matches 0 as @e at @s if predicate dt:onfire run tag @s add dt.lit
execute unless score fireglow dt.config matches 0 as @e at @s if predicate dt:onfire run tag @s add dt.onfire
execute unless score fireglow dt.config matches 0 as @e[tag=dt.onfire] at @s unless predicate dt:onfire run function dt:fireunlight
execute if score fireglow dt.config matches 0 as @e[tag=dt.lit] at @s if predicate dt:onfire run tag @s remove dt.lit

# everything else

execute as @e[type=#dt:luminous_entities] at @s run function dt:tag