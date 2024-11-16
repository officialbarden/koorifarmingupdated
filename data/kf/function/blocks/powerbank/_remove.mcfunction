#> kf:blocks/powerbank/_remove

# Drop Item
summon item ~ ~ ~ {Item:{id:"minecraft:ghast_spawn_egg",count:1,components:{"minecraft:item_name":'{"italic":false,"text":"Power Bank"}',"minecraft:entity_data":{id:"minecraft:item_display",Tags:["kf.PowerBank"]}}}}

# Kill
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:glass",count:1}},distance=..2,limit=1]

# Remove fence
fill ~ ~ ~ ~ ~ ~ air replace glass

# Remove
execute store result score .tempUUID kf.PowerUUIDs run data get entity @s UUID[0]
    #> No Tier
    execute as @e[tag=kf.Powered,distance=..50] if score @s kf.PowerUUIDs = .tempUUID kf.PowerUUIDs run function kf:blocks/powerbank/unpower_entities

# Particle
particle block{block_state:"glass"} ~ ~ ~ .1 .1 .1 1 5 normal

# Sound
playsound block.beacon.deactivate block @a ~ ~ ~ 1 2