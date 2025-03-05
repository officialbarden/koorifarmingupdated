$execute store result storage kq:quests players[{username:$(username)}].quests[{ID:$(ID),type:"collect_items"}].progress int 1 run clear @s $(subject) 0

data remove storage kq:temp count.list[0]

scoreboard players remove $Quests kq.Values 1
execute if score $Quests kq.Values matches 1.. run function kq:list/count/iterate/3
execute if score $Quests kq.Values matches 1.. run function kq:list/count/iterate/1 with storage kq:names Names