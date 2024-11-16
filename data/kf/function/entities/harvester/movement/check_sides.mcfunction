#> kf:entities/harvester/movement/check_sides

# If no tag, go right

execute as @s[tag=!kf.GoLeft,tag=!kf.GoRight] positioned ^-1 ^ ^ if block ~ ~ ~ #kf:bot_passable run tag @s add kf.GoRight
execute as @s[tag=!kf.GoLeft,tag=!kf.GoRight] positioned ^1 ^ ^ if block ~ ~ ~ #kf:bot_passable run tag @s add kf.GoLeft

execute as @s run function kf:entities/harvester/movement/tag_proofing


# Sides
    #> Go Left
    execute if entity @s[tag=kf.GoRight] positioned ^-1 ^ ^ if predicate kf:bot_can_walk rotated ~180 ~ run return run function #kf:harvester/move_right
    #> Go Right
    execute if entity @s[tag=kf.GoLeft] positioned ^1 ^ ^ if predicate kf:bot_can_walk rotated ~180 ~ run return run function #kf:harvester/move_left
