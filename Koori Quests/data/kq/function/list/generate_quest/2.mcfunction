execute store result score $Templates kq.Values run data get storage kq:quest_template template
$execute store result score $Quests kq.Values run data get storage kq:quests players[{username:$(username)}].quests

scoreboard players set $IDCheck kq.Values 1
execute store result storage kq:names Names.id_check int 1 run scoreboard players get $IDCheck kq.Values
execute if score $Quests kq.Values < $Templates kq.Values run function kq:list/generate_quest/3 with storage kq:names Names
