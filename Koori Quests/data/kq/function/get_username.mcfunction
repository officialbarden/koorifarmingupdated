forceload add 0 0 0 0
setblock 0 300 0 air
setblock 0 300 0 black_shulker_box{Items:[{count:1b,Slot:0b,id:"minecraft:player_head"}]}
item modify block 0 300 0 container.0 kq:fph
data remove storage kq:names Names
data modify storage kq:names Names.username set from block 0 300 0 Items[0].components."minecraft:profile".name
setblock 0 300 0 air
