execute as @s[tag=kf.GoRight] at @s positioned ^-1 ^ ^ unless block ~ ~ ~ #kf:bot_passable run return run function kf:entities/harvester/movement/tag_left
execute as @s[tag=kf.GoLeft] at @s positioned ^1 ^ ^ unless block ~ ~ ~ #kf:bot_passable run return run function kf:entities/harvester/movement/tag_right
