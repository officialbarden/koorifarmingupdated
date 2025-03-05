$data remove storage kq:quests players[{username:$(username)}].quests[{ID:$(ID)}]
function kq:list/generate_quest/1

playsound minecraft:entity.bat.death master @s ~ ~ ~ 1 0 1
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 0 1

tellraw @s ["",{"text":"K","color":"#DAFFA5"},{"text":"o","color":"#CFFFA0"},{"text":"o","color":"#C5FF9C"},{"text":"r","color":"#BBFF97"},{"text":"i ","color":"#B1FF93"},{"text":"Q","color":"#A7FF8F"},{"text":"u","color":"#9CFF8A"},{"text":"e","color":"#92FF86"},{"text":"s","color":"#88FF81"},{"text":"t","color":"#7EFF7D"},{"text":"s >> New Quest Generated!","color":"#74FF79"}]