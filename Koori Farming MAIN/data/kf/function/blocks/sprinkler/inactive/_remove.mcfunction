#> kf:blocks/sprinkler/inactive/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:warden_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:block_display",start_interpolation:-1,teleport_duration:15,Tags:["kf.Sprinkler","kf.RequiresPower","kf.LowUsage"],transformation:{left_rotation:[1f,0f,0f,0.399f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,1.5f,0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:cornflower"}},"minecraft:item_name":'{"italic":false,"text":"Sprinkler"}'}}}

# Kill
kill @s

# Particle
particle block{block_state:"cornflower"} ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.crop.break block @a ~ ~ ~ 1 0.5