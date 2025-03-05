execute store result score #GameTime time.Values run time query daytime

# GAMETICK:
# 5000 -> 12pm
# 12000 -> 6pm
# 18000 -> 12am
# 22000 -> 6am
#> Day:
    execute if score #GameTime time.Values matches 0 run scoreboard players add Day time.Values 1
    execute if score Day time.Values matches 8 run scoreboard players set Day time.Values 1
#> Time:
execute if score #GameTime time.Values matches 17000 run scoreboard players set Hour time.Values 0
execute if score #GameTime time.Values matches 17000 run scoreboard players add Day time.Values 1
execute if score #GameTime time.Values matches 17000 run data modify storage jailrogue:time time.Hour set value "12am"

execute if score #GameTime time.Values matches 18000 run scoreboard players set Hour time.Values 1
execute if score #GameTime time.Values matches 18000 run data modify storage jailrogue:time time.Hour set value "1am"

execute if score #GameTime time.Values matches 19000 run scoreboard players set Hour time.Values 2
execute if score #GameTime time.Values matches 19000 run data modify storage jailrogue:time time.Hour set value "2am"

execute if score #GameTime time.Values matches 20000 run scoreboard players set Hour time.Values 3
execute if score #GameTime time.Values matches 20000 run data modify storage jailrogue:time time.Hour set value "3am"

execute if score #GameTime time.Values matches 21000 run scoreboard players set Hour time.Values 4
execute if score #GameTime time.Values matches 21000 run data modify storage jailrogue:time time.Hour set value "4am"

execute if score #GameTime time.Values matches 22000 run scoreboard players set Hour time.Values 5
execute if score #GameTime time.Values matches 22000 run data modify storage jailrogue:time time.Hour set value "5am"

execute if score #GameTime time.Values matches 23000 run scoreboard players set Hour time.Values 6
execute if score #GameTime time.Values matches 23000 run data modify storage jailrogue:time time.Hour set value "6am"

execute if score #GameTime time.Values matches 0 run scoreboard players set Hour time.Values 7
execute if score #GameTime time.Values matches 0 run data modify storage jailrogue:time time.Hour set value "7am"

execute if score #GameTime time.Values matches 1000 run scoreboard players set Hour time.Values 8
execute if score #GameTime time.Values matches 1000 run data modify storage jailrogue:time time.Hour set value "8am"

execute if score #GameTime time.Values matches 2000 run scoreboard players set Hour time.Values 9
execute if score #GameTime time.Values matches 2000 run data modify storage jailrogue:time time.Hour set value "9am"

execute if score #GameTime time.Values matches 3000 run scoreboard players set Hour time.Values 10
execute if score #GameTime time.Values matches 3000 run data modify storage jailrogue:time time.Hour set value "10am"

execute if score #GameTime time.Values matches 4000 run scoreboard players set Hour time.Values 11
execute if score #GameTime time.Values matches 4000 run data modify storage jailrogue:time time.Hour set value "11am"

execute if score #GameTime time.Values matches 5000 run scoreboard players set Hour time.Values 12
execute if score #GameTime time.Values matches 5000 run data modify storage jailrogue:time time.Hour set value "12pm"

execute if score #GameTime time.Values matches 6000 run scoreboard players set Hour time.Values 13
execute if score #GameTime time.Values matches 6000 run data modify storage jailrogue:time time.Hour set value "1pm"

execute if score #GameTime time.Values matches 7000 run scoreboard players set Hour time.Values 14
execute if score #GameTime time.Values matches 7000 run data modify storage jailrogue:time time.Hour set value "2pm"

execute if score #GameTime time.Values matches 8000 run scoreboard players set Hour time.Values 15
execute if score #GameTime time.Values matches 8000 run data modify storage jailrogue:time time.Hour set value "3pm"

execute if score #GameTime time.Values matches 9000 run scoreboard players set Hour time.Values 16
execute if score #GameTime time.Values matches 9000 run data modify storage jailrogue:time time.Hour set value "4pm"

execute if score #GameTime time.Values matches 10000 run scoreboard players set Hour time.Values 17
execute if score #GameTime time.Values matches 10000 run data modify storage jailrogue:time time.Hour set value "5pm"

execute if score #GameTime time.Values matches 11000 run scoreboard players set Hour time.Values 18
execute if score #GameTime time.Values matches 11000 run data modify storage jailrogue:time time.Hour set value "6pm"

execute if score #GameTime time.Values matches 12000 run scoreboard players set Hour time.Values 19
execute if score #GameTime time.Values matches 12000 run data modify storage jailrogue:time time.Hour set value "7pm"

execute if score #GameTime time.Values matches 13000 run scoreboard players set Hour time.Values 20
execute if score #GameTime time.Values matches 13000 run data modify storage jailrogue:time time.Hour set value "8pm"

execute if score #GameTime time.Values matches 14000 run scoreboard players set Hour time.Values 21
execute if score #GameTime time.Values matches 14000 run data modify storage jailrogue:time time.Hour set value "9pm"

execute if score #GameTime time.Values matches 15000 run scoreboard players set Hour time.Values 22
execute if score #GameTime time.Values matches 15000 run data modify storage jailrogue:time time.Hour set value "10pm"

execute if score #GameTime time.Values matches 16000 run scoreboard players set Hour time.Values 23
execute if score #GameTime time.Values matches 16000 run data modify storage jailrogue:time time.Hour set value "11pm"

#> Sun/Moon happening: (☀↑ ☀ ☀↓ ☽↑ ☽ ☽↓)
    execute if score #GameTime time.Values matches 23000 run data modify storage jailrogue:time time.wtsomd set value "☀↑"
    execute if score #GameTime time.Values matches 3000 run data modify storage jailrogue:time time.wtsomd set value "☀"
    execute if score #GameTime time.Values matches 12000 run data modify storage jailrogue:time time.wtsomd set value "☀↓"
    execute if score #GameTime time.Values matches 12000 run data modify storage jailrogue:time time.wtsomd set value "☽↑"
    execute if score #GameTime time.Values matches 16000 run data modify storage jailrogue:time time.wtsomd set value "☽"
    execute if score #GameTime time.Values matches 21000 run data modify storage jailrogue:time time.wtsomd set value "☽↓"


#> Date
    execute if score #GameTime time.Values matches 17000 run function time:zprivate/timecalc/season/nextday
    execute unless score season.Season time.Values matches 4.. if score season.Day time.Values matches 92.. run function time:zprivate/timecalc/season/nextseason
    execute if score season.Season time.Values matches 4.. if score season.Day time.Values matches 93.. run function time:zprivate/timecalc/season/nextseason

    #> Change Values
        execute store result storage jailrogue:time time.Year int 1 run scoreboard players get season.Year time.Values
        execute store result storage jailrogue:time time.DayNum int 1 run scoreboard players get season.Day time.Values

        execute if score season.Season time.Values matches 1 run data modify storage jailrogue:time time.Season set value "Summer"
        execute if score season.Season time.Values matches 2 run data modify storage jailrogue:time time.Season set value "Spring"
        execute if score season.Season time.Values matches 3 run data modify storage jailrogue:time time.Season set value "Autumn"
        execute if score season.Season time.Values matches 4 run data modify storage jailrogue:time time.Season set value "Winter"

        scoreboard players operation #season.DayDigit time.Values = season.Day time.Values
        scoreboard players operation #season.DayDigit time.Values %= #RemoveDigit10sAndAbove time.Values

        execute unless score season.Day time.Values matches 11..19 if score #season.DayDigit time.Values matches 0 run data modify storage jailrogue:time time.NumberThang set value "th"
        execute unless score season.Day time.Values matches 11..19 if score #season.DayDigit time.Values matches 1 run data modify storage jailrogue:time time.NumberThang set value "st"
        execute unless score season.Day time.Values matches 11..19 if score #season.DayDigit time.Values matches 2 run data modify storage jailrogue:time time.NumberThang set value "nd"
        execute unless score season.Day time.Values matches 11..19 if score #season.DayDigit time.Values matches 3 run data modify storage jailrogue:time time.NumberThang set value "rd"
        execute if score #season.DayDigit time.Values matches 4..9 run data modify storage jailrogue:time time.NumberThang set value "th"
        execute if score season.Day time.Values matches 11..19 run data modify storage jailrogue:time time.NumberThang set value "th"
    


execute if score Day time.Values matches 1 run data modify storage jailrogue:time time.Day set value "Mon"
execute if score Day time.Values matches 2 run data modify storage jailrogue:time time.Day set value "Tue"
execute if score Day time.Values matches 3 run data modify storage jailrogue:time time.Day set value "Wed"
execute if score Day time.Values matches 4 run data modify storage jailrogue:time time.Day set value "Thurs"
execute if score Day time.Values matches 5 run data modify storage jailrogue:time time.Day set value "Fri"
execute if score Day time.Values matches 6 run data modify storage jailrogue:time time.Day set value "Sat"
execute if score Day time.Values matches 7 run data modify storage jailrogue:time time.Day set value "Sun"

execute store result storage jailrogue:time time.TickRate int 1 run scoreboard players get .tps k.Values
execute store result storage jailrogue:time time.Humidity int 10 run scoreboard players get .humidity k.Humidity
function time:zprivate/timecalc/set_string with storage jailrogue:time time