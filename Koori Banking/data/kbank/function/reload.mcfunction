#> kbank:reload

# Tellraw
tellraw @a {"text":"[Koori] Banking Module","color":"#b38781"}

# Objectives
scoreboard objectives add k.Values dummy
scoreboard objectives add k.Bank dummy

# Storage
data merge storage koori:variables {requiredAmount:0,loot_table:"",coinsRequired:0,sellItem:{},errorCode:0,depositAmount:0,detractAmount:0,playerUUID:0,storageName:''}