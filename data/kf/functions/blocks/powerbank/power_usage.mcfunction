#> kf:blocks/powerbank/power_usage

# Add to entities
scoreboard players add .poweredEntities kf.Power 1

# Check Usage
    #> Low
    execute if entity @s[tag=kf.LowUsage] run scoreboard players add .powerExpense kf.Power 15
    #> Medium
    execute if entity @s[tag=kf.MediumUsage] run scoreboard players add .powerExpense kf.Power 50
    #> High
    execute if entity @s[tag=kf.HighUsage] run scoreboard players add .powerExpense kf.Power 100