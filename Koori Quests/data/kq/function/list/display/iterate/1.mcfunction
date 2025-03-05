$execute store result score $Quests kq.Values run data get storage kq:quests players[{username:$(username)}].quests
data remove storage kq:temp quest_list
$data modify storage kq:temp quest_list set from storage kq:quests players[{username:$(username)}].quests


execute if score $Quests kq.Values matches 1.. run function kq:list/display/iterate/2 with storage kq:temp quest_list[0]
