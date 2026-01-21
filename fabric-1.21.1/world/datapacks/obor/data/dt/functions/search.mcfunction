#search for valid space
execute at @s unless block ~ ~ ~ #dt:air unless block ~ ~ ~ water[level=0] if block ~ ~1 ~ #dt:air run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #dt:air unless block ~ ~ ~ water[level=0] if block ~1 ~ ~ #dt:air run tp @s ~1 ~ ~
execute at @s unless block ~ ~ ~ #dt:air unless block ~ ~ ~ water[level=0] if block ~ ~ ~1 #dt:air run tp @s ~ ~ ~1
execute at @s unless block ~ ~ ~ #dt:air unless block ~ ~ ~ water[level=0] if block ~-1 ~ ~ #dt:air run tp @s ~-1 ~ ~
execute at @s unless block ~ ~ ~ #dt:air unless block ~ ~ ~ water[level=0] run tp @s ~ ~ ~-1
execute at @s unless block ~ ~ ~ #dt:air unless block ~ ~ ~ water[level=0] run tp @s ~ ~2 ~

#kill invalid markers
execute at @s unless block ~ ~ ~ #dt:air run function dt:kill
execute as @s at @s if entity @e[type=marker,tag=dt.light.mark,tag=!dt.light,distance=..0.5] run execute as @e[type=marker,tag=dt.light.mark,tag=!dt.light,distance=..0.5] run function dt:kill

#place light
execute as @s at @s if block ~ ~ ~ water[level=0] run fill ~ ~ ~ ~ ~ ~ light[waterlogged=true,level=15] replace water
execute as @s at @s unless block ~ ~ ~ water unless block ~ ~ ~ light run fill ~ ~ ~ ~ ~ ~ light[waterlogged=false,level=15] replace #dt:air


tag @s remove dt.light
