#> kbank:bank_retrieve

# Add amount
    #> Retrieve coins in bank
    scoreboard players operation .coinsAmount k.Values = @s k.Bank
    
    #> If greater than 0, retrieve
    execute if score .coinsAmount k.Values > .bankDetract k.Values run scoreboard players operation .coinsAmount k.Values = .bankDetract k.Values
    execute store result storage koori:variables detractAmount int 1 run scoreboard players get .coinsAmount k.Values
    execute if score .coinsAmount k.Values matches 1.. run function kbank:retrieve_coins with storage koori:variables

# Error
execute if score .coinsAmount k.Values matches 0 run function kbank:error_log

# Remove Advancement
advancement revoke @s from kbank:retrieve_bank