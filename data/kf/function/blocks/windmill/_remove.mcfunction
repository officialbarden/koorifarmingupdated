#> kf:blocks/windmill/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:ghast_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:block_display",interpolation_duration:15,Tags:["kf.WindMill"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-1f],scale:[2f,2f,2f]},block_state:{Name:"minecraft:cobweb"}},"minecraft:item_name":'{"italic":false,"text":"Wind Mill"}'}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:oak_fence",count:1}},distance=..2,limit=1]

# Remove fence
execute if block ~ ~ ~ oak_fence[waterlogged=true] run setblock ~ ~ ~ water
fill ~ ~ ~ ~ ~ ~ air replace oak_fence

# Particle
particle block{block_state:"minecraft:oak_fence"} ~ ~ ~ 0 0 0 1 0 normal

# Sound
playsound block.stem.break block @a ~ ~ ~ 1 2