scoreboard players add season.Season time.Values 1
scoreboard players set season.Day time.Values 1

scoreboard players operation #season.DayDigit time.Values = season.Day time.Values
scoreboard players operation #season.DayDigit time.Values %= #RemoveDigit10sAndAbove time.Values