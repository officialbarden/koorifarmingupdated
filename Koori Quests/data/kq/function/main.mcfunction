execute as @a[scores={quests=1..10}] at @s run function kq:list/1
execute as @a[scores={quests=100..}] at @s run function kq:list/reset/1
execute as @a[scores={quests=..-1}] at @s run function kq:list/reward/1
scoreboard players enable @a quests

scoreboard players add @a[tag=kq.soundlol] kq.Values 1
execute as @a[tag=kq.soundlol] at @s run function kq:sound_lol


