#> kbank:retrieve_coins

# Deposit amount inventory
scoreboard players operation @s k.Bank -= .coinsAmount k.Values

# Clear amount
$give @s sunflower[custom_name='{"color":"gold","italic":false,"text":"Coin"}',lore=['{"color":"gray","italic":false,"text":"Fancy Coin!"}'],custom_data={k.Coin:true}] $(detractAmount)


# Tell how many coins
title @s actionbar [{"text": "Bank Account: ","color":"green"},{"score":{"objective": "k.Bank","name": "@s"},"color": "yellow"}]

# Sound
playsound block.note_block.bell player @s ~ ~ ~ 1 2