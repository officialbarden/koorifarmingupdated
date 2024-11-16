#> kf:entities/harvester/harvesting/harvest_crop

# Insert into Storage
$loot insert $(x) $(y) $(z) mine ~ ~ ~ mainhand

# Replant
function kf:entities/harvester/harvesting/replant

# Visuals
    #> Particles
    particle block{block_state:"minecraft:tall_grass"} ~ ~ ~ 0 0 0 1 0 normal
    #> Sounds
    playsound block.crop.break block @a ~ ~ ~