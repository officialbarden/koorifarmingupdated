
data remove storage kq:temp quest_body
$data modify storage kq:temp quest_body.ID set value $(id_check)
$data modify storage kq:temp quest_body.type set from storage kq:quest_template template[{ID:$(id_check)}].type
$data modify storage kq:temp quest_body.name set from storage kq:quest_template template[{ID:$(id_check)}].name
$data modify storage kq:temp quest_body.reward_lt set from storage kq:quest_template template[{ID:$(id_check)}].reward_lt

$execute store result score $RandomGoalAmount kq.Values run random value $(min)..$(max)
execute store result storage kq:temp quest_body.goal int 1 run scoreboard players get $RandomGoalAmount kq.Values

$execute store result score $ListLength kq.Values run data get storage kq:quest_template template[{ID:$(id_check)}].list
$execute if score $ListLength kq.Values matches 1 run data modify storage kq:temp quest_body.subject set from storage kq:quest_template template[{ID:$(id_check)}].list[0]
execute if score $ListLength kq.Values matches 2.. run scoreboard players remove $ListLength kq.Values 1
execute if score $ListLength kq.Values matches 1.. store result storage kq:names Names.list_length int 1 run scoreboard players get $ListLength kq.Values
execute if score $ListLength kq.Values matches 1.. run function kq:list/generate_quest/random/_list2 with storage kq:names Names


$execute unless data storage kq:quests players[{username:$(username)}].quests[{ID:$(id_check)}] run data modify storage kq:quests players[{username:$(username)}].quests append from storage kq:temp quest_body
