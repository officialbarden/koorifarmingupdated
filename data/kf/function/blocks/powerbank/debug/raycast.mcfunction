#> kf:blocks/powerbank/debug/raycast

# Display particle
execute if score .rayType kf.ReceivingPower matches 1 run particle dust{color:[0.565,1.000,0.906],scale:1} ~ ~ ~ 0 0 0 1 0 normal @a[tag=.temp]
execute if score .rayType kf.ReceivingPower matches 2 run particle dust{color:[1.000,0.529,0.000],scale:1} ~ ~ ~ 0 0 0 1 0 normal @a[tag=.temp]


# Unless entity, repeat
execute if score .playerNearby k.Values matches 1 unless entity @s[distance=..1] positioned ^ ^ ^1 run function kf:blocks/powerbank/debug/raycast