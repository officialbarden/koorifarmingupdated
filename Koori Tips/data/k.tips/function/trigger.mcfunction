#> k.tips:trigger

# Check
execute store success score .success notifications run tag @s[tag=!k.NoNotifications] add k.NoNotifications
execute unless score .success notifications matches 1 run tag @s remove k.NoNotifications

# tellraw
execute if score .success notifications matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"text":"Notifications Disabled","color":"red"}]
execute unless score .success notifications matches 1 run tellraw @s [{"text":"| ","color":"gray"},{"text":"Notifications Enabled","color":"yellow"}]

# Remove
scoreboard players reset @s notifications
advancement revoke @s only k.tips:trigger