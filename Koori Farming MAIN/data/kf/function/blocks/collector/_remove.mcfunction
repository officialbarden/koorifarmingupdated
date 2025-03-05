#> kf:blocks/collector/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:llama_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["kf.Collector"]},"minecraft:item_name":'{"italic":false,"text":"Collector"}'}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..2,limit=1]

# Remove fence
fill ~ ~ ~ ~ ~ ~ air replace barrel

# Particle
#particle block barrel ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
#playsound block.wood.break block @a ~ ~ ~ 1 2