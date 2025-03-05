$execute store result score $Progress kq.Values run data get storage kq:quests players[{username:$(username)}].quests[{ID:$(ID)}].progress
$data modify storage kq:names Names.subject set from storage kq:quests players[{username:$(username)}].quests[{ID:$(ID)}].subject

$execute store result score $Goal kq.Values run data get storage kq:quests players[{username:$(username)}].quests[{ID:$(ID)}].goal
$execute store result storage kq:names Names.goal int 1 run data get storage kq:quests players[{username:$(username)}].quests[{ID:$(ID)}].goal

$data modify storage kq:names Names.reward_lt set from storage kq:quests players[{username:$(username)}].quests[{ID:$(ID)}].reward_lt

execute if score $Progress kq.Values >= $Goal kq.Values run function kq:list/reward/check/reward with storage kq:names Names
execute if score $Progress kq.Values < $Goal kq.Values run function kq:list/reward/check/scold with storage kq:names Names
