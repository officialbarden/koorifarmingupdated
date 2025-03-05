# get quest id.
scoreboard players operation $RewardID kq.Values = @s quests
scoreboard players set .minusOne kq.Values -1
scoreboard players operation $RewardID kq.Values *= .minusOne kq.Values 

scoreboard players reset @s quests
scoreboard players enable @s quests

function kq:get_username

function kq:list/generate_quest/1
execute store result storage kq:names Names.ID int 1 run scoreboard players get $RewardID kq.Values

function kq:list/reward/check/1 with storage kq:names Names


