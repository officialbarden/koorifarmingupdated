scoreboard players add season.Day time.Values 1

scoreboard players operation #season.DayDigit time.Values = season.Day time.Values
scoreboard players operation #season.DayDigit time.Values %= #RemoveDigit10sAndAbove time.Values

execute store result storage jailrogue:time time.DayNum int 1 run scoreboard players get season.Day time.Values