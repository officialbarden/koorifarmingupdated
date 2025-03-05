# Hypersorter written by barden

execute as @s[tag=!kf.placedMachine] at @s unless block ~ ~ ~ dispenser[facing=down] run function kf:blocks/hypersorter/setblock
execute as @s[tag=kf.placedMachine] at @s run function kf:blocks/hypersorter/zprivate/break_check

execute as @s[tag=kf.Powered] at @s run function kf:blocks/hypersorter/zprivate/sorting/main
