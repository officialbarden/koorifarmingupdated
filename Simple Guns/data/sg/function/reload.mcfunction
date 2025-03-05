scoreboard objectives add k.Values dummy
scoreboard players set .1 k.Values 1
tellraw @a [{"text":"| ","color":"gray"},{"text":"<Simple Guns> ","color":"dark_purple"},{"text":"reloaded"}]
schedule function sg:main 1t replace