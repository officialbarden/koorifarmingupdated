scoreboard objectives add playtime trigger
scoreboard objectives add time.Playtime minecraft.custom:minecraft.play_time

scoreboard objectives add time.Values dummy
scoreboard objectives add time.ScoreboardDisplay dummy
scoreboard objectives modify time.ScoreboardDisplay displayname {"bold":true,"color":"gold","text":"KOORI FARMING"}

scoreboard players set #TicksToSeconds time.Values 100
scoreboard players set #RemoveDigit10sAndAbove time.Values 10
