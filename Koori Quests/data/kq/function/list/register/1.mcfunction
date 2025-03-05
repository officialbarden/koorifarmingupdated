$data modify storage kq:names Names.UUID set from entity $(username) UUID[0]
data modify storage kq:names Names.quests set value []
data modify storage kq:quests players append from storage kq:names Names
title @s actionbar [{"text": "Koori Quests ","color": "red"},{"text": "| ","color": "white"},{"text": "Registered Successfully.","color": "green"}]
