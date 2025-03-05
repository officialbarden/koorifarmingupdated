scoreboard players reset .temp
tag @s add .target
function sg:ray.end
tag @s remove .target
$damage @s $(damage) $(damage_type) by @p[tag=.temp]