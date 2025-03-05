data modify entity @s data.BlockContents.Barrel append from block ~ ~-1 ~ Items
data modify entity @s data.BlockContents.Barrel append from block ~ ~-1 ~1 Items
data modify entity @s data.BlockContents.Barrel append from block ~ ~-1 ~-1 Items
data modify entity @s data.BlockContents.Barrel append from block ~1 ~-1 ~1 Items
data modify entity @s data.BlockContents.Barrel append from block ~1 ~-1 ~-1 Items
data modify entity @s data.BlockContents.Barrel append from block ~1 ~-1 ~ Items
data modify entity @s data.BlockContents.Barrel append from block ~-1 ~-1 ~ Items
data modify entity @s data.BlockContents.Barrel append from block ~-1 ~-1 ~1 Items
data modify entity @s data.BlockContents.Barrel append from block ~-1 ~-1 ~-1 Items

data modify entity @s data.BlockContents.Hopper append from block ~ ~-2 ~ Items
data modify entity @s data.BlockContents.Hopper append from block ~ ~-2 ~1 Items
data modify entity @s data.BlockContents.Hopper append from block ~ ~-2 ~-1 Items
data modify entity @s data.BlockContents.Hopper append from block ~1 ~-2 ~1 Items
data modify entity @s data.BlockContents.Hopper append from block ~1 ~-2 ~-1 Items
data modify entity @s data.BlockContents.Hopper append from block ~1 ~-2 ~ Items
data modify entity @s data.BlockContents.Hopper append from block ~-1 ~-2 ~ Items
data modify entity @s data.BlockContents.Hopper append from block ~-1 ~-2 ~1 Items
data modify entity @s data.BlockContents.Hopper append from block ~-1 ~-2 ~-1 Items

fill ~1 ~1 ~-1 ~-1 ~-2 ~1 air destroy
execute positioned ~ ~-1 ~ run kill @e[type=item,distance=..3]
function kf:blocks/hypersorter/zprivate/drop_items/main
summon item ~ ~ ~ {Item:{id:"minecraft:spider_spawn_egg","components":{"item_name":'{"text":"Hypersorter","italic":false}',"entity_data":{id:"marker",Rotation:[0f,0f],Tags:[kf.RequiresPower,kf.HyperSorter,kf.HighUsage]}}}}
kill @s