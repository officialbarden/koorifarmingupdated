$execute unless data storage kq:quests players[{username:$(username)}] run function kq:list/register/1 with storage kq:names Names

$execute if data storage kq:quests players[{username:$(username)}].quests run function kq:list/display/1 with storage kq:names Names
