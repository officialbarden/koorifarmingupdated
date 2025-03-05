## macros:
# $(name)
# $(type)
# $(min)
# $(max)
# $(list)
# $(reward_lt)

$data modify storage kq:quest_template template append value {type:$(type),min:$(min),max:$(max),list:$(list),reward_lt:"$(reward_lt)"}
# DO NOT CHANGE THIS. DO NOT MERGE LINE 9 AND 11 INTO THE SAME COMMAND
$data modify storage kq:quest_template template[-1].name set value '$(name)'
execute store result score $ID kq.Values run data get storage kq:quest_template template
execute store result storage kq:quest_template template[-1].ID int 1 run scoreboard players get $ID kq.Values
