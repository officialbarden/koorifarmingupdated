#> kbank:deposit_coins

# Deposit amount inventory
scoreboard players operation @s k.Bank += .coinsAmount k.Values
scoreboard players set .bankDetract k.Values 16
scoreboard players set .bankDeposit k.Values 16

# Clear amount
$clear @s sunflower[custom_data={k.Coin:true}] $(depositAmount)

# Tell how many coins
title @s actionbar [{"text": "Bank Account: ","color":"green"},{"score":{"objective": "k.Bank","name": "@s"},"color": "yellow"}]

# Sound
playsound block.note_block.bell player @s ~ ~ ~ 1 2