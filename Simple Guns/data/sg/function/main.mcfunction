execute as @a if items entity @s weapon.mainhand *[custom_data~{sg.Gun:{}}] unless data entity @s SelectedItem.components{"minecraft:damage":0} run function sg:calc.cooldown
execute as @a if items entity @s weapon.mainhand *[custom_data~{sg.Gun:{}}] unless items entity @s weapon.mainhand *[custom_data~{sg.InfAmmo:{}}] run title @s actionbar [{"text":"- Ammo: ","color":"gray"},{"entity": "@s","nbt":"SelectedItem.components.\"minecraft:custom_data\".\"sg.Gun\".loadedAmmo","color":"white"},{"text":"/"},{"entity": "@s","nbt":"SelectedItem.components.\"minecraft:custom_data\".\"sg.Gun\".maxAmmo","color":"white"},{"text":" -"}]
execute as @a if items entity @s weapon.mainhand *[custom_data~{sg.Gun:{},sg.InfAmmo:{}}] run title @s actionbar [{"text":"- ","color":"gray"},{"entity": "@s","nbt":"SelectedItem.components.\"minecraft:custom_name\"","interpret":true},{"text":" - ","color":"gray"},{"text":"∞ Ammo","color":"white"},{"text":" -","color":"gray"}]

schedule function sg:main 1t replace
