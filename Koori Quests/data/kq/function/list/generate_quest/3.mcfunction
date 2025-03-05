$execute store success score $Success kq.Values if data storage kq:quests players[{username:$(username)}].quests[{ID:$(id_check)}]

$data modify storage kq:names Names.min set from storage kq:quest_template template[{ID:$(id_check)}].min
$data modify storage kq:names Names.max set from storage kq:quest_template template[{ID:$(id_check)}].max

execute if score $Success kq.Values matches 0 run function kq:list/generate_quest/random/_list with storage kq:names Names

scoreboard players add $IDCheck kq.Values 1
execute store result storage kq:names Names.id_check int 1 run scoreboard players get $IDCheck kq.Values

$execute store result score $Quests kq.Values run data get storage kq:quests players[{username:$(username)}].quests
execute if score $Quests kq.Values < $Templates kq.Values run function kq:list/generate_quest/3 with storage kq:names Names
