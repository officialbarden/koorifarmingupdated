advancement revoke @s only sg:used.gun

execute unless data entity @s SelectedItem.components{"minecraft:damage":0} run return fail

# check if ammo or not
execute unless items entity @s weapon.mainhand *[custom_data~{sg.InfAmmo:{}}] store result score .current k.Values run data get entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".loadedAmmo
execute unless items entity @s weapon.mainhand *[custom_data~{sg.InfAmmo:{}}] store result score .usage k.Values run data get entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".ammoUsage

execute unless items entity @s weapon.mainhand *[custom_data~{sg.InfAmmo:{}}] if score .usage k.Values > .current k.Values run return run function sg:reload.gun with entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"

# Shoot
execute unless items entity @s weapon.mainhand *[custom_data~{sg.InfAmmo:{}}] if predicate sg:no_ammo run return fail

#> Start Cooldown
function sg:activate.cooldown with entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"

#> Instantiate Raycast
execute store result score .max k.Values run data get entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".rayDistance
data modify storage k.temp:temp gunInfo set from entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"

#> Remove Bullet
execute store result score .temp k.Values run data get entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".loadedAmmo
execute store result score .usage k.Values run data get entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".ammoUsage
scoreboard players operation .temp k.Values -= .usage k.Values
execute store result storage k.temp:temp value byte 1 run scoreboard players get .temp k.Values
execute unless items entity @s weapon.mainhand *[custom_data~{sg.InfAmmo:{}}] run function sg:set.ammo.amount with storage k.temp:temp


tag @s add .temp
execute anchored eyes positioned ^ ^ ^.5 run function sg:raycast
tag @s remove .temp

function sg:recoil with entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"


# Sounds
execute unless data entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".sound run return run function sg:def.shoot.sound
function sg:custom.shoot.sound with entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"