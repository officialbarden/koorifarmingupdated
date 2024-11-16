#> kf:blocks/crystalizer/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:phantom_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["kf.Crystalizer",".temp","kf.RequiresPower","kf.HighUsage"]},"minecraft:item_name":'{"italic":false,"text":"Crystalizer"}'}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:chiseled_stone_bricks",Count:1b}},distance=..2,limit=1]

# Remove fence
fill ~ ~ ~ ~ ~ ~ air replace chiseled_stone_bricks

# Particle
#particle block barrel ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
#playsound block.wood.break block @a ~ ~ ~ 1 2