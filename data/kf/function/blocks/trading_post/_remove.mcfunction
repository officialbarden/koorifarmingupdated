#> kf:blocks/trading_post/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:ocelot_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:block_display",start_interpolation:-1,teleport_duration:15,Tags:["kf.RequiresPower","kf.TradingPost","kf.LowUsage"],transformation:{left_rotation:[0f,0f,1f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.01f,-0.5f],scale:[1f,0.503f,1f]},block_state:{Name:"minecraft:scaffolding"}},"minecraft:item_name":'{"italic":false,"text":"Trading Post"}'}}}


# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:detector_rail",count:1}},distance=..2,limit=1]

# Remove fence
execute if block ~ ~ ~ detector_rail[waterlogged=true] run setblock ~ ~ ~ water
fill ~ ~ ~ ~ ~ ~ air replace detector_rail

# Particle
particle block{block_state:"detector_rail"} ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.anvil.break block @a ~ ~ ~ 1 2