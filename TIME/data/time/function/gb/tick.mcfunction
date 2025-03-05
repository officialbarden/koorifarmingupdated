function time:zprivate/timecalc/main

scoreboard players enable @a playtime
execute as @a[scores={playtime=1..}] at @s run function time:zprivate/playtime/show

#> tick file prototyping
schedule function time:gb/tick 1s replace

function time:zprivate/titleanim/1