#> kwings:as_everyone

# Add to Scoreboard
scoreboard players add @s[scores={k.flyTimer=0..}] k.flyTimer 1

# If using elytra, flap
execute if predicate kwings:using_wings unless score @s k.flyTimer matches 0 run function kwings:flap

# If flyTimer 5.. remove Levitation
execute if score @s k.flyTimer matches 6.. run function kwings:stop_levitation

# If Sneaking, slow fall
execute if predicate kwings:sneaking if predicate kwings:wearing_wings unless entity @s[nbt={OnGround:1b}] run function kwings:slow_fall
