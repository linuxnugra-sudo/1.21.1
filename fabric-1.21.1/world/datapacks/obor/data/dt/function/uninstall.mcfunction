# disable everything to make sure there are no light blocks or markers

scoreboard players set playersitemsglows dt.config 0
scoreboard players set itemsglow dt.config 0
scoreboard players set blazesglow dt.config 0
scoreboard players set glowsquidsglow dt.config 0
scoreboard players set litcreepersglow dt.config 0
scoreboard players set fireglow dt.config 0
scoreboard players set mobsitemsglow dt.config 0
scoreboard players set arrowsglow dt.config 0
scoreboard players set fireballsglow dt.config 0
scoreboard players set magmacubesglow dt.config 0

tellraw @s ["",{"text":"Uninstallation ","color":"red"},{"text":"Successful. Please run "},{"text":"/datapack disable <file>","color":"gray","clickEvent":{"action":"suggest_command","value":"/datapack disable \"file/Dynamic Lights v5.1 1.20.5 - 1.21.3.zip\""}},{"text":", "},{"text":"delete","color":"red"},{"text":" the datapack, and run "},{"text":"/reload","color":"gray","clickEvent":{"action":"suggest_command","value":"/reload"}},{"text":"."}]