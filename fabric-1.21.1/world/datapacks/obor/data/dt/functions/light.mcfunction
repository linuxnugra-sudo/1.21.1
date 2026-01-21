execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["dt.light","dt.light.mark"]}
execute as @e[type=minecraft:marker,tag=dt.light] at @s run function dt:search
