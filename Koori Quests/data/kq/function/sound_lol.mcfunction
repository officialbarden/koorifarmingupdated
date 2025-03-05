execute as @s[tag=kq.soundlol,scores={kq.Values=20}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0 1
execute as @s[tag=kq.soundlol,scores={kq.Values=40}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1
execute as @s[tag=kq.soundlol,scores={kq.Values=60}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

execute as @s[tag=kq.soundlol,scores={kq.Values=60}] run tag @s remove kq.soundlol
scoreboard players reset @s[scores={kq.Values=60}] kq.Values
