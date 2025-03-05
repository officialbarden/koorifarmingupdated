#> kbank:bank_deposit

# Add amount
    #> Retrieve coins in inventory
    execute store result score .coinsAmount k.Values run clear @s sunflower[custom_data~{k.Coin:true}] 0
    
    #> If greater than 0, add
    execute if score .coinsAmount k.Values > .bankDeposit k.Values run scoreboard players operation .coinsAmount k.Values = .bankDeposit k.Values
    execute store result storage koori:variables depositAmount int 1 run scoreboard players get .coinsAmount k.Values
    execute if score .coinsAmount k.Values matches 1.. run function kbank:deposit_coins with storage koori:variables

# Error
execute if score .coinsAmount k.Values matches 0 run function kbank:error_log

# Remove Advancement
advancement revoke @s from kbank:deposit_bank