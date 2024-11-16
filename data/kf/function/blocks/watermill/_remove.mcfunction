#> kf:blocks/watermill/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:allay_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:block_display",teleport_duration:15,Tags:["kf.WaterMill"],transformation:{left_rotation:[0f,0f,-0.703f,0.711f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,1f,-1f],scale:[2f,2f,2f]},block_state:{Name:"minecraft:oak_trapdoor"}},"minecraft:item_name":'{"italic":false,"text":"Water Mill"}'}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:oak_fence",count:1}},distance=..2,limit=1]

# Remove fence
execute if block ~ ~ ~ oak_fence[waterlogged=true] run setblock ~ ~ ~ water
fill ~ ~ ~ ~ ~ ~ air replace oak_fence

# Particle
particle block{block_state:"oak_fence"} ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.wooden_button.click_off block @a ~ ~ ~ 1 2