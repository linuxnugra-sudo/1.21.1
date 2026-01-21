# player
execute unless score playersitemsglows dt.config matches 0 as @s[type=player,tag=!dt.lit] if items entity @s weapon.* #dt:lightemitting run tag @s add dt.lit
execute as @s[tag=dt.lit,type=player] unless items entity @s weapon.* #dt:lightemitting unless predicate dt:onfire run tag @s remove dt.lit
execute if score playersitemsglows dt.config matches 0 as @s[type=player,tag=dt.lit] unless predicate dt:onfire run tag @s remove dt.lit

# item
execute unless score itemsglow dt.config matches 0 as @s[type=item,tag=!dt.lit] if predicate dt:luminousitems run tag @s add dt.lit
execute as @s[type=item,tag=dt.lit] unless predicate dt:luminousitems run tag @s remove dt.lit
execute if score itemsglow dt.config matches 0 as @s[type=item,tag=dt.lit] run tag @s remove dt.lit

# creeper
execute unless score litcreepersglow dt.config matches 0 as @s[type=minecraft:creeper,nbt={ignited:true},tag=!dt.lit] run tag @s add dt.lit
execute as @s[type=minecraft:creeper,nbt={ignited:false},tag=dt.lit] unless predicate dt:onfire run tag @s remove dt.lit
execute if score litcreepersglow dt.config matches 0 as @s[type=minecraft:creeper,tag=dt.lit] unless predicate dt:onfire run tag @s remove dt.lit

#blazes
execute unless score blazesglow dt.config matches 0 as @s[type=minecraft:blaze,tag=!dt.lit] run tag @s add dt.lit
execute if score blazesglow dt.config matches 0 as @s[type=minecraft:blaze,tag=dt.lit] run tag @s remove dt.lit

#glowsquids
execute unless score glowsquidsglow dt.config matches 0 as @s[type=minecraft:glow_squid,tag=!dt.lit] run tag @s add dt.lit
execute if score glowsquidsglow dt.config matches 0 as @s[type=minecraft:glow_squid,tag=dt.lit] run tag @s remove dt.lit

# flame arrows 
execute unless score arrowsglow dt.config matches 0 as @s[type=arrow,nbt=!{Fire:-1s},tag=!dt.lit] run tag @s add dt.lit
execute unless score arrowsglow dt.config matches 0 as @s[type=spectral_arrow,  tag=!dt.lit] run tag @s add dt.lit
execute as @s[type=arrow,nbt={Fire:0s},tag=dt.lit] run tag @s remove dt.lit
execute if score arrowsglow dt.config matches 0 as @s[type=arrow,nbt=!{Fire:-1s},tag=dt.lit] run tag @s remove dt.lit

# fireballs (ghast/blaze)

execute unless score fireballsglow dt.config matches 0 as @s[type=minecraft:small_fireball,tag=!dt.lit] run tag @s add dt.lit
execute if score fireballsglow dt.config matches 0 as @s[type=minecraft:small_fireball,tag=dt.lit] run tag @s remove dt.lit
execute unless score fireballsglow dt.config matches 0 as @s[type=minecraft:small_fireball,tag=!dt.lit] run tag @s add dt.lit
execute if score fireballsglow dt.config matches 0 as @s[type=minecraft:small_fireball,tag=dt.lit] run tag @s remove dt.lit

# magma cubes

execute unless score magmacubesglow dt.config matches 0 as @e[type=minecraft:magma_cube,tag=!dt.lit] run tag @s add dt.lit
execute if score magmacubesglow dt.config matches 0 as @e[type=minecraft:magma_cube,tag=dt.lit] run tag @s remove dt.lit
