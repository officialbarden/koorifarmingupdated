$execute store result score $Quests kq.Values run data get storage kq:quests players[{username:$(username)}].quests
$data modify storage kq:temp count.list set from storage kq:quests players[{username:$(username)}].quests

function kq:list/count/iterate/3
execute if score $Quests kq.Values matches 1.. run function kq:list/count/iterate/1 with storage kq:names Names
