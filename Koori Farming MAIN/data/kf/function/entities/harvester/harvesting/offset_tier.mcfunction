#> kf:entities/harvester/harvesting/offset_tier

# Retrieve Coordinates
    #> No tier
    scoreboard players reset .success k.Values
    execute as @e[limit=1,type=marker,tag=kf.Collector,tag=!kf.Full,distance=..15,sort=nearest] run function kf:blocks/collector/get_coords

# Harvest crops
execute if score .success k.Values matches 1 run function kf:entities/harvester/harvesting/harvest_crop with storage kf:position

# Remove Storage
data remove storage kf:position {}