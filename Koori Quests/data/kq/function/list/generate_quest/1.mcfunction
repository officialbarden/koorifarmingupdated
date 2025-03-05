execute unless data storage kq:quest_template template run title @s actionbar {"text": ">> No templates found!","color": "gray","italic": true}


execute if data storage kq:quest_template template run function kq:get_username
execute if data storage kq:quest_template template run function kq:list/generate_quest/2 with storage kq:names Names