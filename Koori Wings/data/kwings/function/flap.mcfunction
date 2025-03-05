#> kwings:flap

# Apply Levitation
effect give @s levitation 1 15 true

# Visual and Audio
    #> Sound
    playsound entity.bat.takeoff player @a ~ ~ ~ 0.2 1.2
    #> Particles
    particle cloud ~ ~-0.5 ~ 0.2 0.2 0.2 0.05 20 normal

# Scoreboards
    #> Fly Timer (To Stop Levitation)
    scoreboard players add @s k.flyTimer 0
    #> Flying Scoreboard
    scoreboard players reset @s k.flying