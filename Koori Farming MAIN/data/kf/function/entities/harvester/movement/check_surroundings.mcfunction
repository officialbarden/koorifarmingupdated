#> kf:entities/harvester/movement/check_surroundings

# Rotation Blocks
execute if block ~ ~-1 ~ magenta_glazed_terracotta run function kf:entities/harvester/movement/rotate_harvester

#> Check Front
execute positioned ^ ^ ^1 if block ~ ~ ~ #kf:bot_passable at @s positioned ~ ~-1 ~ positioned ^ ^ ^1 if block ~ ~ ~ #kf:bot_walkable positioned ~ ~1 ~ run return run function kf:entities/harvester/movement/move
#> Check Sides
function kf:entities/harvester/movement/check_sides


