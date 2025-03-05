scoreboard players operation $ResetQuestID kq.Values = @s quests
scoreboard players reset @s quests
scoreboard players enable @s quests

function kq:get_username
execute store result storage kq:names Names.ID int 0.01 run scoreboard players get $ResetQuestID kq.Values
function kq:list/reset/2 with storage kq:names Names